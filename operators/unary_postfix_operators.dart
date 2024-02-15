/* In Dart, unary postfix operators are operators that are applied after their 
operand. These operators typically modify the value of their operand in some 
way or perform an operation on it. Unary postfix operators come in different 
forms, such as increment ('++') and decrement ('--'). */

// Here's a breakdown of unary postfix operators in Dart:

/* 1. Increment (++): The increment operator adds 1 to the value of its operand. 
It can be used with variables of numeric types like integers and doubles. 
When used in a postfix form (e.g., i++), the increment operation is 
performed after the current value of the operand is evaluated. */
// For example:
int i = 5;
// print(i++);  // prints 5
// print(i);    // prints 6

/* 2. Decrement (--): The decrement operator subtracts 1 from the value of its operand. 
Similar to the increment operator, it can be used with numeric types. 
When used in a postfix form (e.g., i--), the decrement operation 
is performed after the current value of the operand is evaluated. */
// For example:
int j = 5;
// print(i--);  // prints 5
// print(i);    // prints 4


/* It's important to note that when these operators are used in postfix form (e.g., i++ or i--), 
the value of the expression is the current value of the operand before the operation is performed. */

/* Unary postfix operators can only be applied to variables (l-values) and not to literals or expressions. 
Attempting to apply them to literals or expressions will result in a compilation error. */
// For example:
// Error: The operator '++' isn't defined for the type 'int Function()'.
// print(5++); // This will result in a compilation error

