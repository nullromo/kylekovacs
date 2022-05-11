# R-2R Ladder Circuits

An explanation of how they work.

## First Steps

Here are some basic concepts that will help to understand.

### Circuit Diagrams

These are the components we will be using:

|Rail|Ground|Resistor
|:-:|:-:|:-:|
|Represents the high voltage source|Represents ground (0V)|Represents a resistor with resistance $R$|
|![Vdd]|![Ground]|![Resistors]|

### Voltage Drop Across a Resistor

In the circuit below, a single resistor is placed between the high voltage
source and ground.

![Voltage Drop]

The voltage at the top is $V_{dd}$, and the voltage at the bottom is $0$. This
means that as the current travels down the length of the resistor, the voltage
is dropping along the way. By the time we get to the bottom, the voltage is all
gone and it's 0V.

### Resistors in Series (Voltage Divider)

If the voltage is dropping as we go along the length of the resistor, what
happens if we look at the voltage halfway along the resistor? We can break that
resistor into two resistors like this:

![Series Resistors]

Depending on the values of $R_1$ and $R_2$, the voltage at the mid point will
be different. Lucky for us, it is very intuitive. If $R_1$ and $R_2$ are equal,
that means half the resistance is above the midpoint and half the resistance is
below the midpoint. In that case, by the time we travel halfway along the full
resistance (all the way to the midpoint), half the voltage will be gone. So the
voltage at the midpoint would be $\frac{V_{dd}}{2}$. If instead $R_1$ was 1% of
$R$, then the voltage at the midpoint would be 99% of $V_{dd}$ because only 1%
of the voltage drop has occurred by the time we travel 1% of the way across the
total resistance.

This is what is typically called a "Voltage Divider" because it is dividing the
voltage drop into 2 parts. The equation for the voltage at the midpoint can be
written like this: $V_{midpoint} = \frac{R_2}{R_1 + R_2} * V_{dd}$. Usually
since the top is fixed at $V_{dd}$ and the bottom is fixed at ground, we call
the midpoint the "output" of the circuit, since that's the voltage we care
about (the voltage the circuit is "producing").

Furthermore, we can also follow this process of splitting the resistors
backwards by combining two resistors. Resistors in series can be simply added
together. In this case, $R_1 + R_2 = R$. We can use this recursively to reduce
circuits with many resistors in series down to a single resistor (if you have
three resistors in series, you can combine the first two and now you're left
with just two in series, which you can combine again).

### Resistors in Parallel

If we have two resistors in parallel, we can't add the resistance values.
Instead, consider the following circuit:

![Parallel Resistors]

Here, an amount of current will flow through each of the resistors according to
the size of the resistor. The fact that there are two paths for the current to
flow through means that more current will flow overall. The formula for
parallel resistors is as follows:

$\frac{1}{R} = \frac{1}{R_1} + \frac{1}{R_2}$

Another way to write it:

$R = \frac{1}{\frac{1}{R_1} + \frac{1}{R_2}}$

This section doesn't have as good of an explanation, but there's the formula.

## R-2R Circuit

An R-2R circuit is meant to convert a number to a voltage. What that means is
if we have a number between 1 and N, we want to turn that into a voltage between
0V and $V_{dd}$.

### Binary Numbers

For computer systems, we usually only use 2 voltages and we call them "high"
and "low." Digitally, they correspond to 1 and 0, respectively. In these
examples, high is $V_{dd}$ and low is 0V.

A number can be represented in binary by a number of bits. For example, a 1-bit
number only has 1 bit, whereas a 10-bit number has 10 bits. The number of
different values that an N-bit number can have is $2^N$. So a 1-bit number can
have 2 values, while a 10-bit number can have 1024 different values.

### Mapping Binary Numbers to Voltages

To map numbers into voltages, we want to divide the output voltage range into
equal parts. For example, if we had 100 possible different numbers, we would
want the number to scale the output voltage by 1% of the maximum each time. If
we had 10,000 possible values for our number, we would want steps of 0.01% of
the maximum voltage. In other words, the higher the resolution of our number
(the more possible values we have), the more possible values for the output of
the circuit there are.

There is a slight problem with this system that you might have already noticed.
If we want to go from 0 to $V_{dd}$ by 1% each step, there will actually be 101
steps because we include 0 as one of the values, and we also include ${V_dd} as
one of the values. For this reason, R-2R circuits leave the maximum value out.
So in reality, this kind of circuit with 100 steps would go from 0V to
$\frac{99}{100}V_{dd}$.

However, that creates a nice little formula we can use. The output voltage is
equal to the value of the number divided by the total number of numbers times
$V_{dd}$. Take a look at the following table that is based on a 1-bit number. A
1-bit number can only be either 0 or 1, so there are only 2 rows in the table.

|Value|Binary|Voltage
|-|-|-|
|0|0|0|
|1|1|$\frac{1}{2}V_{dd}$|

You will notice that the 2 possible output values are 0 and
$\frac{1}{2}V_{dd}$, but that we can't get $V_{dd}$. Now take a look at a
similar table for a 2-bit number.

|Value|Binary|Voltage
|-|-|-|
|0|00|0|
|1|01|$\frac{1}{4}V_{dd}$|
|2|10|$\frac{2}{4}V_{dd}$|
|3|11|$\frac{3}{4}V_{dd}$|

We have 4 possible value with a 2-bit number. Here is one more table for a
3-bit number, with 8 possible values.

|Value|Binary|Voltage
|-|-|-|
|0|000|0|
|1|001|$\frac{1}{8}V_{dd}$|
|2|010|$\frac{2}{8}V_{dd}$|
|3|011|$\frac{3}{8}V_{dd}$|
|4|100|$\frac{4}{8}V_{dd}$|
|5|101|$\frac{5}{8}V_{dd}$|
|6|110|$\frac{6}{8}V_{dd}$|
|7|111|$\frac{7}{8}V_{dd}$|

You should see the pattern where the output is based on the value of the number
divided by the total number of possible values.

Let's take a look at how we can build a circuit that provides this function.

### 1-Bit R-2R Circuit
explain circuit math for 1-bit, expplain circuit math for 2-bit
### 2-Bit R-2R Circuit


[//]: # (images)
[Vdd]: ./images/vdd.svg "Vdd"
[Ground]: ./images/ground.svg "Ground"
[Resistors]: ./images/resistors.svg "Resistors"
[Voltage Drop]: ./images/voltage_drop.svg "Voltage drop circuit"
[Series Resistors]: ./images/series_resistors.svg "Two resistors in series"
[Parallel Resistors]: ./images/parallel_resistors.svg "Two resistors in parallel"
