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

## R-2R Circuit Concepts

An R-2R circuit is meant to convert a number to a voltage. What that means is
if we have a number between 1 and N, we want to turn that into a voltage between
0V and $V_{dd}$. To do this, we use a binary representation of the number and a
set of input nodes in the circuit.

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
steps because we include 0 as one of the values, and we also include $V_{dd}$ as
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

## R-2R Circuits

For an R-2R circuit to work, we need 1 output and N inputs, where N is the
quantity of bits in our number. Each input will correspond to a single bit of
the number.

### 1-Bit R-2R Circuit

Here is a 1-bit R-2R circuit. The output node is on the bottom-right, between
the two resistors. At the top, we have an input called "bit 1" that can either
be set to 0V or $V_{dd}$.

![1 Bit R-2R]

If we set the input node to 0V, then we have created a situation where no
current will flow. There is no voltage at the input and there is no voltage at
the ground, so there will be no voltage at the midpoint (output). This matches
the first row of the 1-bit table above.

If we set the input node to $V_{dd}$, then we have created a voltage divider!
The top is $V_{dd}$ and the bottom is ground. We can redraw it like this:

![1 Bit R-2R Redrawn]

Looking at the Voltage Divider section above, we can use the formula:

$V_{output} = \frac{2R}{2R + 2R} * V_{dd} = \frac{1}{2}V_{dd}$

So now you can see how if we set the input to 0V, we get 0V out, and if we set
the output to $V_{dd}$, we get $\frac{1}{2}V_{dd}$. This matches with the 1-bit
table above. Now let's look at a 2-bit R-2R circuit.

### 2-Bit R-2R Circuit

Here is a 2-bit R-2R circuit. This time there are 2 input nodes called "bit 1"
and "bit 2." There are 4 possible states for the circuit (bits 1 and 2 are both
low; bit 1 is high and bit 2 is low; bit 1 is low and bit 2 is high; or bits 1
and 2 are both high). You can use the 2-bit table above to visualize all the
possibilities.

![2 Bit R-2R]

Let's look at each case one at a time.

#### First Case: Bits 1 and 2 Are Both Low

Both bits are low, so we ground the inputs.

![2 Bit R-2R Case 1]

Here, both inputs are at 0V and the ground is at 0V. Similarly with the 1-bit
R-2R circuit, no current can flow, so the output is just 0V.

#### Second Case: Bit 1 is High and Bit 2 is Low

Bit 1 is high, so we connect it to $V_{dd}$. Bit 2 is low, so we ground it.

![2 Bit R-2R Case 2]

This case is a little more complicated. First, we need to determine the voltage
at the very center node (at the "T" junction). It is labelled with a question
mark. To do that, let's first rearrange the circuit a little so that it looks
more familiar.

![2 Bit R-2R Case 2 Redrawn]

Now let's combine the 2 resistors on the left-hand fork by using the series
resistor formula. $2R + R = 3R$.

![2 Bit R-2R Case 2 Redrawn 2]

Now we have 2 resistors in parallel that we can combine using the formula:

$R = \frac{1}{\frac{1}{3R} + \frac{1}{2R}} = \frac{6}{5}R$

![2 Bit R-2R Case 2 Redrawn 3]

Hey, what do you know, we're left with a very familiar circuit again. This time
we calculate the voltage in the middle as

$\frac{\frac{6}{5}R}{2R + \frac{6}{5}R} * V_{dd} = \frac{3}{8}V_{dd}$

So now we have our original circuit, but we know that the voltage at the "T"
junction is $\frac{3}{8}V_{dd}$.

![2 Bit R-2R Case 2 Annotated]

The voltage at that node will remain constant,
so from here we can look at the circuit like this

![2 Bit R-2R Case 2 Redrawn 4]

Hmm... this should look familiar too. Yep, it's an other voltage divider! I
won't redraw it vertically this time; let's skip to the formula:

$\frac{2R}{2R + R} * \frac{3}{8}V_{dd} = \frac{1}{4}V_{dd}$

So for this case (bit 1 is high and bit 2 is low), we found that the output
voltage of the circuit is $\frac{1}{4}V_{dd}$.

#### Third Case: Bit 1 is Low and Bit 2 is High

Bit 1 is low, so we ground it. Bit 2 is high, so we connect it to $V_{dd}$.

![2 Bit R-2R Case 3]

This one is a little easier. First let's redraw the circuit a little.

![2 Bit R-2R Case 3 Redrawn]

We can reduce the bottom 2 parallel resistors to
$\frac{1}{\frac{1}{2R} + \frac{1}{2R}} = R$.

![2 Bit R-2R Case 3 Redrawn 2]

Now let's reduce those bottom 2 series resistors to $R + R = 2R$.

![2 Bit R-2R Case 3 Redrawn 3]

What do you know, another voltage divider. This time the voltage is
$\frac{2R}{2R + 2R} * V_{dd} = \frac{1}{2}V_{dd}$, and that is the output of
the circuit for this case.

#### Fourth Case: Bits 1 and 2 are Both High

Both bits are high, so we connect them to $V_{dd}$.

![2 Bit R-2R Case 4]

Once again, we need to do an intermediate calculation to find the voltage at
the "T" junction (labelled with a question mark). Let's rearrange the circuit.

![2 Bit R-2R Case 4 Redrawn]

Now we can combine the 2 series resistors into $R + 2R = 3R$.

![2 Bit R-2R Case 4 Redrawn 2]

Now we have 2 parallel resistors, so we can combine them into
$R = \frac{1}{\frac{1}{3R} + \frac{1}{2R}} = \frac{6}{5}R$.

![2 Bit R-2R Case 4 Redrawn 3]

This is a voltage divider again, and the middle voltage is
$\frac{2R}{\frac{6}{5}R + 2R} * V_{dd} = \frac{5}{8}V_{dd}$. Let's go back to
the original circuit and solve for the output now.

![2 Bit R-2R Case 4 Annotated]

Once again, the voltage at that node is constant, so we can look at the circuit
like this:

![2 Bit R-2R Case 4 Redrawn 4]

Finally, we can calculate the output voltage of the circuit using this final
voltage divider. But be careful! All the voltage dividers we have seen so far
have been connected to ground. This one goes between $V_{dd}$ and
$\frac{5}{8}V_{dd}$ instead. This means that we have to modify our formula a little.

Remember how we came up with the formula? We said that as you travel along the
resistor, you are dropping your voltage from $V_{dd}$ down to ground. Well, in
this case we are not dropping all the way to ground. So instead of taking the
fraction of the drop and multiplying by $V_{dd}$, let's multiply by the total
voltage drop. In this case, it's
$V_{dd} - \frac{5}{8}V_{dd} = \frac{3}{8}V_{dd}$. That gives us the amount of
voltage the output is _above_ the lower-voltage node. So in order to get the
actual output voltage, we need to add the voltage of the lower node as well. 

So our overall voltage divider formula for this circuit will be
$\frac{5}{8}V_{dd} + \frac{R}{2R + R} * \frac{3}{8}V_{dd} = \frac{3}{4}V_{dd}$.

#### 2-Bit R-2R Circuit Review

We found that for the first case, the output was 0V; for the second case, the
output was $\frac{1}{4}V_{dd}$; for the third case, the output was
$\frac{1}{2}V_{dd}$; and for the fourth case, the output was
$\frac{3}{4}V_{dd}$. If we look back to the 2-bit table above, we see that
these are the exact values we wanted to get. So now we can see that
constructing the 2-bit R-2R circuit this way will allow us to convert numbers
to voltages just like how we planned.

### N-Bit R-2R Circuit

We can extend the circuit as far as we want to. Here is an 8-bit version.

![8 Bit R-2R]

Doing all the math to compute what the voltages are is a pain, but we can use
what we learned earlier and just stick to the table.

[//]: # (images)
[Vdd]: ./images/vdd.svg "Vdd"
[Ground]: ./images/ground.svg "Ground"
[Resistors]: ./images/resistors.svg "Resistors"
[Voltage Drop]: ./images/voltage_drop.svg "Voltage drop circuit"
[Series Resistors]: ./images/series_resistors.svg "Two resistors in series"
[Parallel Resistors]: ./images/parallel_resistors.svg "Two resistors in parallel"
[1 Bit R-2R]: ./images/1_bit_r_2r.svg "1-bit R-2R circuit"
[1 Bit R-2R Redrawn]: ./images/1_bit_r_2r_redrawn.svg "1-bit R-2R circuit redrawn"
[2 Bit R-2R]: ./images/2_bit_r_2r.svg "2-bit R-2R circuit"
[2 Bit R-2R Case 1]: ./images/2_bit_r_2r_case_1.svg "2-bit R-2R circuit case 1"
[2 Bit R-2R Case 2]: ./images/2_bit_r_2r_case_2.svg "2-bit R-2R circuit case 2"
[2 Bit R-2R Case 2 Redrawn]: ./images/2_bit_r_2r_case_2_redrawn.svg "2-bit R-2R circuit case 2 redrawn"
[2 Bit R-2R Case 2 Redrawn 2]: ./images/2_bit_r_2r_case_2_redrawn_2.svg "2-bit R-2R circuit case 2 redrawn 2"
[2 Bit R-2R Case 2 Redrawn 3]: ./images/2_bit_r_2r_case_2_redrawn_3.svg "2-bit R-2R circuit case 2 redrawn 3"
[2 Bit R-2R Case 2 Annotated]: ./images/2_bit_r_2r_case_2_annotated.svg "2-bit R-2R circuit case 2 annotated"
[2 Bit R-2R Case 2 Redrawn 4]: ./images/2_bit_r_2r_case_2_redrawn_4.svg "2-bit R-2R circuit case 2 redrawn 4"
[2 Bit R-2R Case 3]: ./images/2_bit_r_2r_case_3.svg "2-bit R-2R circuit case 3"
[2 Bit R-2R Case 3 Redrawn]: ./images/2_bit_r_2r_case_3_redrawn.svg "2-bit R-2R circuit case 3 redrawn"
[2 Bit R-2R Case 3 Redrawn 2]: ./images/2_bit_r_2r_case_3_redrawn_2.svg "2-bit R-2R circuit case 3 redrawn 2"
[2 Bit R-2R Case 3 Redrawn 3]: ./images/2_bit_r_2r_case_3_redrawn_3.svg "2-bit R-2R circuit case 3 redrawn 3"
[2 Bit R-2R Case 4]: ./images/2_bit_r_2r_case_4.svg "2-bit R-2R circuit case 4"
[2 Bit R-2R Case 4 Redrawn]: ./images/2_bit_r_2r_case_4_redrawn.svg "2-bit R-2R circuit case 4 redrawn"
[2 Bit R-2R Case 4 Redrawn 2]: ./images/2_bit_r_2r_case_4_redrawn_2.svg "2-bit R-2R circuit case 4 redrawn 2"
[2 Bit R-2R Case 4 Redrawn 3]: ./images/2_bit_r_2r_case_4_redrawn_3.svg "2-bit R-2R circuit case 4 redrawn 3"
[2 Bit R-2R Case 4 Annotated]: ./images/2_bit_r_2r_case_4_annotated.svg "2-bit R-2R circuit case 4 annotated"
[2 Bit R-2R Case 4 Redrawn 4]: ./images/2_bit_r_2r_case_4_redrawn_4.svg "2-bit R-2R circuit case 4 redrawn 4"
[8 Bit R-2R]: ./images/8_bit_r_2r.svg "8-bit R-2R circuit"
