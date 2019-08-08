int pinA = 33;
int pinB = 34;

enum TurnDirection { SUNWISE, WIDDERSHINS, NONE };

volatile TurnDirection turn = NONE;
volatile int encoderState = B11;
volatile int completedSunwiseTurns = 0;

void setup()
{
  pinMode(pinA, INPUT_PULLUP);
  pinMode(pinB, INPUT_PULLUP);
  Serial.begin(9600);
  attachInterrupt(digitalPinToInterrupt(pinA), pinAISR, CHANGE);
  attachInterrupt(digitalPinToInterrupt(pinB), pinBISR, CHANGE);
}

void loop()
{
  Serial.println(completedSunwiseTurns);
  /*
  if (completedSunwiseTurns > 0)
  {
    Serial.println("turn sunwise!");
    completedSunwiseTurns -= 1;
  }
  else if (completedSunwiseTurns < 0)
  {
    Serial.println("turn widdershins!");
    completedSunwiseTurns += 1;
  }
  */
  delay(100);
}

void pinAISR()
{
  if (digitalRead(pinA) == HIGH) //rising
  {
    if (encoderState == B01)
    {
      if (turn == WIDDERSHINS)
        completedSunwiseTurns -= 1;
      turn = NONE;
    }
    encoderState |= B10;
  }
  else //falling
  {
    if (encoderState == B11)
      turn = SUNWISE;
    encoderState &= B01;
  }
}

void pinBISR()
{
  if (digitalRead(pinB) == HIGH) //rising
  {
    if (encoderState == B10)
    {
      if (turn == SUNWISE)
        completedSunwiseTurns += 1;
      turn = NONE;
    }
    encoderState |= B01;
  }
  else //falling
  {
    if (encoderState == B11)
      turn = WIDDERSHINS;
    encoderState &= B10;
  }
}
