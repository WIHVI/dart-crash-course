/* In Dart, Optionals are not explicitly defined as a language feature like in 
some other languages such as Swift or Kotlin. However, Dart offers a way to 
represent optional values through its null safety feature, which was introduced 
in Dart 2.12. With null safety, Dart provides a clear and concise way to handle 
nullable and non-nullable values. */

// Here's how null safety works in Dart:

/* 1. Nullable Types: 
In Dart null safety, types can be declared as nullable by appending a '?' 
to the type name. For example, 'int?' represents a nullable integer, 
while 'String?' represents a nullable string. */

/* 2. Non-Nullable Types: 
Types without the '?' are non-nullable by default. This means they cannot hold 
null values. For instance, 'int' is a non-nullable integer. */

/* 3. Null Safety Enforcement: 
With null safety enabled, Dart's compiler enforces rules to prevent null 
reference errors at compile time. This ensures that non-nullable variables 
cannot be assigned null unless explicitly marked with a ? at the declaration. */

/* 4. Handling Nullability: 
To handle nullable values, Dart provides the null-aware operators:
  '?.': The null-aware access operator allows you to access properties or call 
        methods on an object if that object is not null. If the object is null, 
        the expression evaluates to null.
  '??': The null-aware if-null operator provides a way to use a default value 
        when a variable is null.
  '?.[]': The null-aware index operator allows you to access elements in a 
          collection if the collection is not null.
  '..': The cascade notation operator allows you to perform a sequence of 
        operations on the same object. */

/* 5. Type Promotion: 
Dart's type system automatically promotes nullable types to non-nullable types 
when null checks are performed. This helps in avoiding unnecessary null checks. */

/* 6. Late Initialization: 
Dart provides the late keyword to declare variables that are initialized after 
their declaration. This is useful when dealing with values that may be assigned 
later, such as in asynchronous code. */

/* In summary, while Dart does not have a distinct "Optional" type like some other 
languages, its null safety feature provides similar functionality for handling 
nullable values, promoting code safety and reducing null reference errors. */
