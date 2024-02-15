/* In Dart, unary prefix operators are operators that operate on a single operand 
that comes before the operand. These operators allow you to perform various operations 
such as negation, incrementing, decrementing, logical negation, and type checking. */

// Here's a comprehensive explanation of unary prefix operators in Dart:

// 1. Unary Minus (-): The unary minus operator negates the value of its operand.
// For example:
var a = 10;
var b = -a; // y is -10

/* 2. Increment (++) and Decrement (--) Operators: 
These operators are used to increase (increment) or decrease (decrement) the value 
of a variable by one. They can only be applied to variables. These operators can be 
used in prefix (++x) or postfix (x++) form. When used in prefix form, 
the increment or decrement operation is performed before the value is used. 
When used in postfix form, the current value of the variable is used, 
and then the increment or decrement operation is performed. */
//For example:
var c = 5;
// ++c; // c is now 6
// --c; // c is now 5 again

// 3. Logical Negation (!): The logical negation operator ('!') inverts the boolean value of its operand.
// For example:
var isOpen = false;
var isClosed = !isOpen; // isClosed is true

/* 4. Type Test Operator (is): The is operator checks whether an object is 
an instance of a particular class or implements a particular interface. 
It returns 'true' if the object is an instance of the specified type, otherwise 'false'. */
// For example:
var d = 5;
// if (d is int) {
//     print("x is an integer");
// }

/* 5. Type Cast Operator (as): The as operator is used for type casting in Dart. 
It attempts to cast an object to a specified type. 
If the object is not of the specified type, a TypeError is thrown. */
// For example:
var obj = 'Hello';
var str = obj as String;
