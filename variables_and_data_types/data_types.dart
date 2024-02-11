/* In Dart, like in many programming languages, data types are used to define 
the type of data that a variable can hold. Dart is a statically typed language, 
meaning that variables are associated with specific types at compile time, 
and the types are enforced during runtime. Dart provides several 
built-in data types to work with different kinds of data. */

// Here's a comprehensive explanation of the data types in Dart:

// 1. Numbers
// - Dart supports two types of numbers: 'int' for integers and 'double' for floating-point numbers.
// - Integers represent whole numbers, such as 1, 42, -10, etc.
// - Floating-point numbers represent decimal numbers, such as 3.14, -0.5, 2.71828, etc.

// 2. Strings:
// - Strings are sequences of characters. They are used to represent text.
// - Strings can be created using single (`'`) or double (`"`) quotes.
// - Dart also supports multi-line strings using triple quotes (`'''` or `"""`).

// 3. Booleans:
// - Booleans represent truth values. They can only have two values: 'true' or 'false'.
// - Booleans are typically used in conditional statements and logical expressions.

// 4. Lists:
// - Lists, also known as arrays in some languages, are ordered collections of objects.
// - Lists can contain objects of any type, including other lists.
// - Lists are created using square brackets (`[]`).

// 5. Maps:
// - Maps, also known as dictionaries or associative arrays in other languages, are collections of key-value pairs.
// - Maps are unordered collections where each key is unique.
// - Maps are created using curly braces (`{}`) with key-value pairs separated by colons (`:`).

// 6. Sets:
// - Sets are collections of unique elements, where each element can appear only once.
// - Sets are unordered collections, meaning the elements do not have a specific order.
// - Sets are created using curly braces (`{}`) with elements separated by commas (`,`).

// 7. Runes:
// - Runes represent a Unicode code point.
// - In Dart, strings are made up of a sequence of UTF-16 code units, 
// but the 'String' type can also represent Unicode code points using the 
// 'runes' property or the 'String.codeUnitAt()' and 'String.codeUnit' methods.

// 8. Symbols:
// - Symbols are identifiers that represent operator names, instance method names, 
// getter names, setter names, constructor names, or library names.
// - Symbols are often used in APIs that refer to identifiers by name.


/* Dart also supports type inference, where the type of a variable is automatically 
determined by the compiler based on the value assigned to it. Additionally, 
Dart provides the 'dynamic' type, which can hold any value and allows dynamic typing 
similar to languages like JavaScript. However, the use of dynamic should be limited 
as it bypasses type checks and can lead to runtime errors if not used carefully. */
