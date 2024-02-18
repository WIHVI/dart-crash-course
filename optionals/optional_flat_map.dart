void main(List<String> args) {
  // Example1
  final String? firstName = 'John';
  String? lastName;

  final fullName = firstName.flatMap(
    (f) => lastName.flatMap((l) => '$f $l'),
  );
  print(fullName);

  // Example 2
  int? nullableValue = 5;

  // Using flatMap to double the value if it's not null
  int? result = nullableValue.flatMap((value) => value * 2);
  print(result); // Output: 10

  nullableValue = null;

  // Using flatMap with a null value
  result = nullableValue.flatMap((value) => value * 2);
  print(result); // Output: null
}

extension FlatMap<T> on T? {
  R? flatMap<R>(R? Function(T) callback) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}

/* This Dart extension is named 'FlatMap', and it extends the functionality of 
nullable types ('T?'). The purpose of this extension is to provide a method 
called 'flatMap' which allows you to apply a transformation function ('callback') 
to a nullable value (T?), returning another nullable value (R?). */

// Let's break down the extension method:

// extension FlatMap<T> on T? 
/* This line defines the extension named 'FlatMap' with a type parameter 'T', 
which extends nullable types ('T?'). This means that any nullable value of type 
'T' can now use the 'flatMap' method provided by this extension. */

//  R? flatMap<R>(R? Function(T) callback) 
/* This line defines the 'flatMap' method within the extension. It takes a 
generic type 'R' and a callback function that takes a non-nullable 'T' as input 
and returns a nullable R. The method itself returns a nullable R. */

// if (shadow == null) {
//   return null;
// } else {
//   return callback(shadow);
// }

/* This part of the method checks if the nullable value shadow is 'null'. 
If it is, the method returns 'null'. If the value is not null, it applies the 
'callback' function to 'shadow' and returns the result. This is essentially 
a way to safely apply a transformation function to a nullable value without 
risking a null pointer exception. */
