/* In Dart, the 'final' keyword is used to declare variables whose values cannot be changed once they are initialized. 
It is similar to the 'const' keyword but with a slight difference: 
while 'const' variables must be initialized with a constant value at compile-time, 
'final' variables can be initialized either at compile-time or run-time, but once initialized, their value cannot be changed. */

/// 1. Immutability:
/* Variables declared with the 'final' keyword are immutable. Once they are assigned a value, 
that value cannot be changed for the remainder of the program's execution. */

/// 2. Initialization:
/* 'final' variables must be initialized exactly once. 
They can be initialized either at the point of declaration or in a constructor. 
If not initialized at the point of declaration, they must be initialized in all constructors of the class. */

/// 3. Instance and Static Members:
/* 'final' can be used to declare both instance variables and static variables. 
For instance variables, each instance of the class will have its own copy, 
while for static variables, there will be only one copy shared among all instances of the class. */

/// 4. Type Inference:
/* Dart allows type inference, so you don't always need to specify the type of a 'final' variable explicitly. 
Dart can infer the type from the assigned value. */

/// 5. Example:
class Example {
  final int x; // Declaration

  Example(this.x); // Constructor

  void display() {
    print('The value of x is $x');
  }
}

void main() {
  final Example example = Example(10); // Initialization
  example.display(); // Output: The value of x is 10

  // -------------------------------------------------

  final myList1 = [1, 2, 3]; // Immutable reference, but elements can be changed
  myList1[0] = 4; // Modifying element is allowed
  print(myList1);

  const myList2 = [1, 2, 3]; // Entire list and elements are immutable
  // myList[0] = 4; // Error: cannot modify a const list
  print(myList2);
}

/// 1. Benefits:
/* Thread Safety: Immutable variables are inherently thread-safe 
because their values cannot be modified after initialization. */

/* Performance: Compiler optimizations can be made knowing that the value of a 
'final' variable will not change, potentially resulting in performance benefits. */

/* Clarity: It communicates the intent of the programmer that a variable's value 
should not change, which can improve code readability and maintainability. */

/// 2. When to Use:
/* Use 'final' when you have a value that should not 
change throughout the program's execution. */

/* Use it for constants, configurations, or values that are 
calculated once and reused multiple times. */

/* It can also be used for parameters passed into methods or constructors 
when you don't intend to modify them within the method or class. */


/// Differences between 'final' and 'const'
// 'final' with lists:
/* Prevents reassignment of the reference: 
You cannot reassign the list variable to a new list object. 
However, the individual elements within the list can still be modified. */

/* Useful for lists initialized at runtime: 
Use 'final' when the list content is determined during execution, 
but you want to prevent accidental reassignment of the entire list reference. */

// const with lists:
/* Creates a truly immutable list: 
The entire list object and its elements are frozen and cannot be changed in any way. */

/* Requires compile-time constant values: 
The list elements must be known at compile-time, like literal values or other 'const' variables. */

/* Offers performance benefits: 
'const' lists are optimized by the compiler, 
potentially leading to smaller memory footprint and faster access. */

// --------------------------------------------------------------

/* Overall, the 'final' keyword in Dart is a powerful tool 
for creating immutable variables, ensuring correctness, clarity, 
and potentially optimizing performance. */