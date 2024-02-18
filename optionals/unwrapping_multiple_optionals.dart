void main(List<String> args) {
  final fullName = getFullName('Foo', 'Bar');
  print(fullName);
}

String getFullName(String? firstName, String? lastName) {
  return withAll<String>(
        [firstName, lastName],
        (List<String> names) => names.join(' '),
      ) ??
      'First name and/or Last name missing';
}

/* This function named 'withAll' that takes two arguments: 
a list of optional values optionals and a callback function callback. */

// 1. Function Signature:
/*  - 'T?': This is a generic type parameter. It means that the function can work 
with any type 'T', and it may return a nullable value of type 'T'. */
/* - 'List<T?> optionals': This parameter is a list of values of type 'T' 
or nullable values of type 'T'. */

/* - 'T Function(List<T>) callback': This parameter is a callback function that 
takes a list of non-nullable values of type 'T' and returns a value of type 'T'. */

// 2. Function Body:
/* - 'optionals.any((e) => e == null)': This part checks if there are any 'null' values 
in the 'optionals' list. The 'any' method iterates through the list and returns 'true' 
if any element satisfies the condition '(e) => e == null', indicating the presence 
of at least one 'null' value. If there are 'null' values, the ternary operator '?' returns 'null'. */

/* - ': callback(optionals.cast<T>())': If there are no 'null' values in the 'optionals' list, 
this part of the code is executed. It calls the 'callback' function with the 'optionals' list 
after casting it to 'List<T>'. The 'cast' method is used to ensure that the list 
contains non-nullable values of type 'T'. The result of this 'callback' 
function call is returned as the result of the 'withAll' function. */

T? withAll<T>(
  List<T?> optionlas,
  T Function(List<T>) callback,
) {
  return optionlas.any((e) => e == null) ? null : callback(optionlas.cast<T>());
}
