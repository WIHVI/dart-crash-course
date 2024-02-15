/* Compound assignment operators in Dart are shorthand notations used to combine 
an arithmetic or bitwise operation with assignment. They allow you to perform an 
operation and assign the result to the same variable in a more concise manner. 
Dart supports several compound assignment operators, including addition, 
subtraction, multiplication, division, remainder, bitwise AND, bitwise OR, 
bitwise XOR, left shift, and right shift. */

// Here's a comprehensive explanation of each compound assignment operator in Dart:

/* 1. Addition Assignment (+=):
Adds the value on the right-hand side of the operator to the current value of 
the variable on the left-hand side and assigns the result back to the variable.
var a = 5;
a += 3; // equivalent to: a = a + 3; */

/* 2. Subtraction Assignment (-=):
Subtracts the value on the right-hand side of the operator from the current value 
of the variable on the left-hand side and assigns the result back to the variable.
var b = 10;
b -= 4; // equivalent to: b = b - 4; */

/* 3. Multiplication Assignment (*=):
Multiplies the value on the right-hand side of the operator with the current value 
of the variable on the left-hand side and assigns the result back to the variable.
var c = 2;
c *= 5; // equivalent to: c = c * 5; */

/* 4. Division Assignment (/=):
Divides the current value of the variable on the left-hand side by the value on 
the right-hand side of the operator and assigns the result back to the variable.
var d = 20;
d /= 4; // equivalent to: d = d / 4; */

/* 5. Remainder Assignment (%=):
Computes the remainder of dividing the current value of the variable on the 
left-hand side by the value on the right-hand side of the operator and assigns 
the result back to the variable.
var e = 17;
e %= 5; // equivalent to: e = e % 5; */

/* 6. Bitwise AND Assignment (&=):
Performs a bitwise AND operation between the current value of the variable 
on the left-hand side and the value on the right-hand side of the operator 
and assigns the result back to the variable.
var f = 12; // Binary: 1100
f &= 5;     // Binary: 0101
            // Result: 0100 (4 in decimal)
            // equivalent to: f = f & 5; */

/* 7. Bitwise OR Assignment (|=):
Performs a bitwise OR operation between the current value of the variable 
on the left-hand side and the value on the right-hand side of the operator 
and assigns the result back to the variable.
var g = 9;  // Binary: 1001
g |= 14;    // Binary: 1110
            // Result: 1111 (15 in decimal)
            // equivalent to: g = g | 14; */

/* 8. Bitwise XOR Assignment (^=):
Performs a bitwise XOR (exclusive OR) operation between the current value 
of the variable on the left-hand side and the value on the right-hand side 
of the operator and assigns the result back to the variable.
var h = 10; // Binary: 1010
h ^= 6;     // Binary: 0110
            // Result: 1100 (12 in decimal)
            // equivalent to: h = h ^ 6; */

/* 9. Left Shift Assignment (<<=):
Shifts the bits of the current value of the variable on the left-hand side 
to the left by the number of positions specified by the value on the 
right-hand side of the operator and assigns the result back to the variable.
var i = 5; // Binary: 101
i <<= 2;   // Shift left by 2 positions
           // Result: 10100 (20 in decimal)
           // equivalent to: i = i << 2; */

/* 10. Right Shift Assignment (>>=):
Shifts the bits of the current value of the variable on the left-hand side 
to the right by the number of positions specified by the value on the 
right-hand side of the operator and assigns the result back to the variable.
var j = 16; // Binary: 10000
j >>= 2;    // Shift right by 2 positions
            // Result: 100 (4 in decimal)
            // equivalent to: j = j >> 2; */

/* These compound assignment operators are useful for writing concise and readable 
code, especially when performing repetitive arithmetic or bitwise operations on 
variables. They can help streamline your code and make it more efficient. */