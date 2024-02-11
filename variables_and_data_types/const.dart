/* In Dart, the 'const' keyword is used to declare constants. 
Constants are expressions that evaluate to a single, unchanging value at compile-time. 
They are effectively immutable variables. The 'const' modifier can be applied to variables, 
constructors, and some other expressions to create compile-time constants. */

/// 1. Variables:
/* When declaring variables with the 'const' keyword, you are indicating 
that the value assigned to the variable is a compile-time constant. */

const int x = 5;
const double PI = 3.14;
const String name = 'John';

/* Attempting to modify a 'const' variable after its declaration 
will result in a compilation error because constants are immutable. */

/// 2. Constructors:
/* The 'const' keyword can be used with constructor calls to create compile-time constant objects. 
This is particularly useful for creating instances of immutable classes. */

class Point {
  final int x;
  final int y;
  const Point(this.x, this.y);
}

/* In this example, 'p1' and 'p2' are compile-time constants 
because the 'Point' constructor is marked as const. */

/// 3. Expressions:
/* Certain expressions can be evaluated at compile-time when prefixed with the 'const' keyword. 
This includes operations involving literals, constants, and constructors marked as 'const'. */

const int a = 5;
const int b = 10;
const int sum1 = a + b; // evaluated at compile-time

// Similarly, you can create compile-time constant collections:
final List<int> list = [1, 2, 3];
const List<int> constList = [1, 2, 3];
/* In this example, 'constList' is a compile-time constant because 
it's created using the 'const' keyword. */

/// 4. Limitations:
/* Not all expressions can be evaluated at compile-time. For example, expressions
 involving variables that are not 'const' cannot be evaluated at compile-time. */

int c = 5;
const int d = 10;
// const int sum2 = c + d; // This will cause a compilation error

/* Additionally, expressions involving non-constant constructors 
cannot be used in 'const' contexts. */


/// 5. Benefits:
/* Using 'const' for values known at compile-time can lead to performance improvements, 
as the values are computed at compile-time rather than runtime. 
It also ensures that the values are immutable, which can help prevent unintended changes. */

// --------------------------------------------------------------

/* In summary, the 'const' keyword in Dart is used to create compile-time constants
 for variables, constructors, and expressions, helping to ensure immutability 
 and potentially improving performance by evaluating values at compile-time. */


