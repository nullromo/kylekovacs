#include <Stepper.h>
#include <Servo.h>
#include <AccelStepper.h>

#define torso    22
#define shoulder 21
#define elbow    20
#define wrist    19
#define hand     18
AccelStepper torsoMotor(AccelStepper::FULL4WIRE, 35, 36, 37, 38, true);//steps/rev, pin1, pin2, pin3, pin4
#define SHOULDER_MOTOR_PIN 2
#define ELBOW_MOTOR_PIN    3
#define WRIST_MOTOR_PIN    4
#define HAND_MOTOR_PIN     5
Servo shoulderMotor;
Servo elbowMotor;
Servo wristMotor;
Servo handMotor;

enum SystemState { RECORD, PLAYBACK, WAIT };
volatile SystemState systemState = WAIT;
#define recordButton   14
#define playbackButton 15
volatile int programPointer = 0;
volatile int playbackPointer = 0;
#define MAX_PROGRAM_LENGTH 10000
int program[5][MAX_PROGRAM_LENGTH];

int ticks = 0;

int shoulderValue;
int elbowValue;
int wristValue;
int handValue;
int torsoValue;

int handMin = 50, handMax = 155,
    wristMin = 0, wristMax = 180,
    elbowMin = 20, elbowMax = 180,
    shoulderMin = 0, shoulderMax = 112;

#define BUFFER_LENGTH 5
int motorBuffer[5][BUFFER_LENGTH];

void loop()
{
  torsoMotor.run();

  if (ticks % 20 == 0)
    mainLoop();

  delay(1);
  ticks++;
}

void mainLoop()
{
  if (systemState == PLAYBACK)
    replayState();

  if (systemState != PLAYBACK)
  {
    readSensors();
    filterMotorValues();
    moveMotors();
  }

  if (systemState == RECORD)
    recordState();

  //print values
  printSensorValues();
  printPointers();
  printSystemState();
  Serial.print(ticks);
  Serial.println(" tick\n");
}

void moveMotors()
{
  handMotor.write(min(max(handMin, handValue), handMax));
  wristMotor.write(min(max(wristMin, wristValue), wristMax));
  elbowMotor.write(min(max(elbowMin, elbowValue), elbowMax));
  shoulderMotor.write(min(max(shoulderMin, shoulderValue), shoulderMax));
  torsoMotor.moveTo(torsoValue);
}

void filterMotorValues()
{
  int results[5] = {torsoValue, shoulderValue, elbowValue, wristValue, handValue};

  for (int m = 0; m < 5; m++)
  {
    double avg = 0.0;
    int sum = 0;
    int* buf = motorBuffer[m];
    //shift array and add new value
    for (int i = 0; i < BUFFER_LENGTH - 1; i++)
      buf[i] = buf[i + 1];
    buf[BUFFER_LENGTH - 1] = results[m];

    //compute average
    for (int i = 0; i < BUFFER_LENGTH; i++)
      avg += buf[i];
    avg /= BUFFER_LENGTH;

    //compute sum of differences from average
    for (int i = 0; i < BUFFER_LENGTH; i++)
      sum += avg - buf[i];

    //reassign value
    double thresh = 1.0;
    if (m == 2)
      thresh = 2.0;
    if (abs(sum) <= thresh)
    {
      results[m] = round(avg);
      buf[BUFFER_LENGTH - 1] = results[m];
    }
  }
  torsoValue = results[0];
  shoulderValue = results[1];
  elbowValue = results[2];
  wristValue = results[3];
  handValue = results[4];
}

void printArray(int arr[], int len)
{
  Serial.print("[");
  for (int i = 0; i < len; i++)
  {
    Serial.print(arr[i]);
    Serial.print(", ");
  }
  Serial.println("]");
}

void replayState()
{
  if (playbackPointer >= programPointer)
  {
    playbackPointer = 0;
    Serial.println("Playback restarting.");
    //TODO: put something here
  }

  shoulderMotor.write(min(max(shoulderMin, program[0][playbackPointer]), shoulderMax));
  elbowMotor.write(min(max(elbowMin, program[1][playbackPointer]), elbowMax));
  wristMotor.write(min(max(wristMin, program[2][playbackPointer]), wristMax));
  handMotor.write(min(max(handMin, program[3][playbackPointer]), handMax));
  torsoMotor.moveTo(program[4][playbackPointer]);
  playbackPointer++;
}

void recordState()
{
  if (programPointer == MAX_PROGRAM_LENGTH)
  {
    Serial.println("Max recording length reached.");
    systemState = WAIT;
  }
  else
  {
    program[0][programPointer] = shoulderValue;
    program[1][programPointer] = elbowValue;
    program[2][programPointer] = wristValue;
    program[3][programPointer] = handValue;
    program[4][programPointer] = torsoValue;
    programPointer++;
  }
}

void readSensors()
{
  shoulderValue = map(analogRead(shoulder), 110,  481, 100,  30);
  elbowValue    = map(analogRead(elbow),    155,  540, 130 - shoulderValue, 215 - shoulderValue);
  wristValue    = map(analogRead(wrist),      0, 1023, 180,   0);
  handValue     = map(analogRead(hand),       0, 1023,  155, 50);
  torsoValue    = map(analogRead(torso),      1,  920,   0, 240) * 200 / 360;
}

void record_ISR()
{
  systemState = RECORD;
  programPointer = 0;
}

void playback_ISR()
{
  systemState = PLAYBACK;
  playbackPointer = 0;
}

void setup()
{
  //set up serial monitor
  Serial.begin(9600);

  //set up stepper
  torsoMotor.setAcceleration(300);
  torsoMotor.setMaxSpeed(50);

  //set up servos
  shoulderMotor.attach(SHOULDER_MOTOR_PIN);
  elbowMotor.attach(ELBOW_MOTOR_PIN);
  wristMotor.attach(WRIST_MOTOR_PIN);
  handMotor.attach(HAND_MOTOR_PIN);

  //set up potentiometers
  pinMode(shoulder, INPUT);
  pinMode(elbow, INPUT);
  pinMode(wrist, INPUT);
  pinMode(hand, INPUT);
  pinMode(torso, INPUT);

  //set up buttons
  pinMode(recordButton, INPUT);
  pinMode(playbackButton, INPUT);
  attachInterrupt(digitalPinToInterrupt(recordButton), record_ISR, RISING);
  attachInterrupt(digitalPinToInterrupt(playbackButton), playback_ISR, FALLING);
}

void printPointers()
{
  Serial.print("prog ptr: ");
  Serial.print(programPointer);
  Serial.print("  play ptr:");
  Serial.println(playbackPointer);
}

void printSensorValues()
{
  Serial.print("sensor values\tsh: ");
  Serial.print(shoulderValue);
  Serial.print("  el: ");
  Serial.print(elbowValue);
  Serial.print("  wr: ");
  Serial.print(wristValue);
  Serial.print("  ha: ");
  Serial.print(handValue);
  Serial.print("  to: ");
  Serial.println(torsoValue);
}

void printSystemState()
{
  if (systemState == RECORD)
    Serial.println("RECORD");
  else if (systemState == PLAYBACK)
    Serial.println("PLAYBACK");
  else if (systemState == WAIT)
    Serial.println("WAIT");
}
