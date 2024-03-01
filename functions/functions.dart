/* Functions in Dart are a fundamental concept used for organizing code, 
promoting reusability, and implementing logic in a structured manner. */

// Here's a comprehensive explanation of functions in Dart:

// 1. Function Declaration:
/* - In Dart, functions are declared using the 'FunctionName' followed by parentheses '()' 
containing optional parameters and curly braces '{}' defining the function body. */
void greet1() {
  print('Hello, World!');
}

// 2. Function Parameters:
/* - Parameters are values passed to a function when it's called. Dart supports positional, named, and optional parameters. */
/* - Positional parameters are declared within the parentheses. */
/* - Named parameters are declared within curly braces '{}' in the function declaration. */
/* - Optional parameters can be positional or named, and they are indicated using square brackets '[]'. */
void greet2(String name) {
  print('Hello, $name!');
}

void greetWithName({
  required String name,
  int? age,
  String address = '123 Lexington Ave',
}) {
  print(name);
  print(age);
  print(address);
}

void makeUpperCase([String? firstName, String lastName = 'Doe']) {
  print(firstName?.toUpperCase());
  print(lastName.toUpperCase());
}

// 3. Return Type:
/* - Functions can have a return type indicating the type of value they return. 
If no return type is specified, the default is 'dynamic'. */
int add1(int a, int b) {
  return a + b;
}

// 4. Anonymous Functions (Closures):
/* - Dart supports the concept of anonymous functions or closures. 
They are functions without a name. */
/* - Used mainly for one-time or short operations. */
var add2 = (int a, int b) {
  return a + b;
};

// 5. Function as First-Class Citizens:
/* - In Dart, functions are first-class citizens, meaning they can be assigned to variables, 
passed as arguments to other functions, and returned from other functions. */
int add3(int a, int b) {
  return a + b;
}

int calculator(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);

// 6. Higher-Order Functions:
/* - Functions that take other functions as parameters or return functions are called higher-order functions. */
/* - They enable powerful abstractions and functional programming techniques. */
void printFiltered(List<int> numbers, bool Function(int) filter) {
  for (var number in numbers) {
    if (filter(number)) {
      print(number);
    }
  }
}

// 7. Lexical Closures:
/* - Dart supports lexical closures where functions can capture variables 
from the lexical scope in which they are defined. */
/* - Allows functions to access variables from enclosing scopes even after 
the enclosing function has finished execution. */
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}
/* var add = makeAdder(2);
print(add(3)); // Output: 5 */

// 8. Function Typing:
/* - Dart allows you to specify function types using the 'typedef' keyword, 
enabling the definition of custom function types. */
typedef MathOperation = int Function(int, int);

int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

// 9. Recursion:
/* - Dart supports recursion, allowing functions to call themselves. */
int factorial(int n) {
  if (n == 0) {
    return 1;
  }
  return n * factorial(n - 1);
}

// 10. Cascade Notation:
/* - Dart provides a cascade notation ('..') to perform a sequence of operations on the same object. */
/* - Useful for chaining method calls together. */
/* var person = Person()
  ..name = 'Alice'
  ..age = 30; */

