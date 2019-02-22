# Floating Point Multiplication in VHDL


## Brief theory

According to IEEE 754 standard, a floating point number is represented as follows:
> $`number = (-1)^s \cdot (1 + m) \cdot 2^{e - bias}`$, where  
> - `s` - the sign of the number
> - `m` - the fractional part of the number (mantissa)
> - `e` - the exponent
> - `bias` - a constand that depends on the number of bits of representation

Bias is a constant that corrects the sign of the exponent. For a positive exponent
the first bit is 1, and for a negativ exponent the first bit is 0. To correct this,
we shall subtract 127 (for a single precision representation on 32 bits) or 
1023 (for a double precision representation on 64 bits) from the exponent.

In memory, a floating point number has the binary representation in the following
diagram, having bias set to 127 (for a single precision representation):  
```
| Bit number | 1 | 2 3 4 5 6 7 8 9 | 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 |
|     Bit    | s |     exponent    |                              mantissa                                |
```

As you can see, the sign has only 1 bit, the exponent has 8 bits (the bit 2 is 0
if the exponent is negative, and 1 for positive exponent, therefore bias is 127
to correct this) and the mantissa has 23 bits. Note from the formula that there
is a hidden bit which is always 1 and is not considered in the binary
representation of numbers. In calculations/hardware implementations, you need to
add this bit manually to reach the right answer.

### Examples of floating point numbers

| Number | Sign | Exponent |        Mantissa         |
|--------|------|----------|-------------------------|
|    5.5 |   0  | 10000001 | 01100000000000000000000 |
|  128.0 |   0  | 10000110 | 00000000000000000000000 |
|  -45.1 |   1  | 10000100 | 01101000110011001100110 |
|    0.5 |   0  | 01111110 | 00000000000000000000000 |
|    0.0 |   0  | 00000000 | 00000000000000000000000 |
|   Inf  |   0  | 11111111 | 00000000000000000000000 |
|  -Inf  |   1  | 11111111 | 00000000000000000000000 |
|   NaN  |   1  | 11111111 | 11111111111111111111111 |


### Algorithm to compute the multiplication of two floating point numbers

**Step 0.** Represent both numbers according to IEEE 754.

**Step 1.** If one of numbers is 0, then the result is 0, without any other 
calculation.

**Step 2.** The sign of the result is XOR between sign bits.

**Step 3.** Add both exponents and then subtract the bias (this is due to the 
fact that each exponent is biassed, and adding them will result two times the 
bias, which is wrong).

**Step 4.** Check for exponent overflow or underflow. For overflow, the result 
is INF, and for underflow is 0.

**Step 5.** Multiply the fractional parts (remember the hidden bit) as learned 
in elementary school, or by using shift register.

**Step 6.** Normalize the result (before dot, you must have only the bit "1" and
after dot you must have the mantissa - e.g. 1.100101010...) and also check for 
rounding for the significant (the 24th bit of the mantissa should be 1).

**Step 7.** If the result was normalized, then add 1 to the exponent.


### Example
Let our numbers be 125.5 and -5.25.  
```
125.5 = 0 10000101 11110110000000000000000  
-5.25 = 1 10000001 01010000000000000000000  
```

Neither of both number is 0, so we shall continue the algorithm. The sign of the
result is `s = 0 XOR 1 = 1`, hence our result will be negative. Next, we add 
both exponents and subtract the bias, so we have:
```
    10000101 
    10000001
    -------- (+)
  1 00000110
    01111111
    -------- (-)
  0 10000111    (no overflow nor underflow)
```

Our exponent, for now, is `e = 10000111`.

Now we shall multiply the fractional parts (just belive that the multiplication
is done right it the following diagram).
```
                         1.11110110000000000000000
                         1.01010000000000000000000
                         ------------------------- (*)
                               0000000000000000000
       111110110000000000000000
     111110110000000000000000
   111110110000000000000000
  ----------------------------------------------- (+)
 10.1001001011100000000000000000000000000000000000
```
Note that we added the hidden bit before dot. Also, note that our number has
more bits than we need, so we will take first 23 bits after dot.
Therefore, `m = 10.10010010111000000000000`. Now, we need to normalize the result,
so the new `m = 1.01001001011100000000000` and we shall add 1 to the exponent: 
`e = 10000111 + 1 = 10001000`.  There we didn't need to round the significant 
because the 24th bit after `'.'` was 0.

Finally, `result = 1 10001000 01001001011100000000000`. You can check by yourself
on http://weitz.de/ieee/ that this is the right answer (be aware that exponent 
and mantissa are swapped).


## Implementation in VHDL using pipeline

To improve speed, the adder must be a carry look ahead, because in our pipeline,
the multiplication of significants is the most time consuming step, so the clock
depends on this time. 

### Multiplication module (Schematic view)
Also, the most efficient way to do the multiplication is like in elementary school.
This method is called Parallel Binary Multiplier Circuit and uses a multiplication
matrix to compute the result.
An example for 4 bits number can be seen in the figure below:

![alt text](https://www.electronicshub.org/wp-content/uploads/2015/06/4-bit-binary-multiplier.jpg)


Note that this implementation needs lots for AND gates (more precisely `j * k`,
where `j` and `k` are the number of bits the numbers are represented - 
`sizeof(a) = j` and `sizeof(b) = k`), and lots of adders (`k` modules). 

An implementation for 23 bits numbers can be seen in the following screenshot.
Note the loneliest XOR in the top right corner. Gray modules are adders 
(carry look ahead) and yellow modules (except for XOR) are AND gates.  


![alt text](https://gitlab.cs.pub.ro/razvan.smadu/CN2-Tema-1/raw/859b8ef5a667c9599a89fc6e01872f007904af60/Resources/Image1.png)

### Simulation of multiplication pipeline in VHDL
In the following image, you can see that there are some clock periods in which
the first instruction has to complete the pipeline, until it reaches the 
last stage where the result is returned. The line of R[32:0] is the result 
of the pipeline, and the RealResult[31:0] has the results computed by another 
program, and hardcoded in the test-bench. 
![alt text](https://github.com/razvanalex/Floating-Point-Multiplication/blob/master/Resources/Simulation.png)

## References
[1] https://www.electronicshub.org/binary-multiplication  
[2] https://www.geeksforgeeks.org/digital-logic-carry-look-ahead-adder/  
[3] Indrumar_CN_New.pdf - owncloud  
[4] curs8_algoritmi_initiali_pipe.pdf - owncloud  
[5] http://steve.hollasch.net/cgindex/coding/ieeefloat.html

