/* Control flow in Dart refers to the mechanisms used to determine the order in which statements 
are executed in a program. Dart, like many programming languages, provides several constructs for 
controlling the flow of execution, including conditionals, loops, and branching statements. */

// Here's a comprehensive explanation of each:

// 1. Conditional Statements:

/* - 'if': The 'if' statement evaluates a condition and executes a block 
of code if the condition is true.

if (condition) {
  // code to execute if condition is true
} */

/*  - 'if-else': The 'if-else 'statement allows you to execute one block of code if 
the condition is true and another block if it's false.

 if (condition) {
  // code to execute if condition is true
} else {
  // code to execute if condition is false
} */

/*  - 'else-if': Dart also supports 'else-if' chains for evaluating multiple conditions.

 if (condition1) {
  // code to execute if condition1 is true
} else if (condition2) {
  // code to execute if condition2 is true
} else {
  // code to execute if all conditions are false
} */


// 2. Switch Statement:

/* - The 'switch' statement evaluates an expression and executes code based on a 
matching case. It provides an alternative to long chains of 'if-else' statements.

switch (expression) {
  case value1:
    // code to execute if expression equals value1
    break;
  case value2:
    // code to execute if expression equals value2
    break;
  default:
    // code to execute if no cases match
} */


// 3. Loops:

/*  - 'for' loop: Executes a block of code repeatedly until a specified 
condition evaluates to false.

for (initializer; condition; increment/decrement) {
  // code to execute repeatedly
} */

/* - 'while' loop: Executes a block of code as long as a specified condition is true.

while (condition) {
  // code to execute while condition is true
} */

/* - 'do-while' loop: Similar to the while loop, but it executes the block of code at least once before checking the condition.

do {
  // code to execute at least once
} while (condition); */


// 4. Branching Statements:

// - 'break': Exits the innermost loop or switch statement.
// - 'continue': Skips the rest of the current iteration of a loop and continues with the next iteration.
// - 'return': Exits the current function and optionally returns a value.
// - 'throw': Throws an exception, which can be caught by an exception handler.
