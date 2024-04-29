import 'dart:async';

void main(List<String> args) async {
  // Expample 1
  /* await for (final name in names.map(
    (name) => name.toUpperCase(),
  )) {
    print(name);
  } */

  // Example 2
  /* await for (final name in ToUpperCase().bind(names)) {
    print(name);
  } */

  // Example 3: Use the custom transformer with the stream
  /* names.transform(ToUpperCase()).listen((String name) {
    print(name); // Prints 'SETH', 'KATHY', 'LARS'
  }); */

  // Example 4
  names.capitalizedUsingTrasform.listen((String name) {
    print(name);
  });

  // Example 5
  await for (final name in names.capitalizedUsingMap) {
    print(name);
  }
}

extension on Stream<String> {
  Stream<String> get capitalizedUsingTrasform => this.transform(ToUpperCase());

  Stream<String> get capitalizedUsingMap =>
      this.map((name) => name.toUpperCase());
}

Stream<String> names = Stream.fromIterable(
  ['Seth', 'Kathy', 'Lars'],
);

// A custom stream transformer named ToUpperCase is defined by extending StreamTransformerBase<String, String>.
// This transformer will transform a stream of strings (<String> input) to another stream of strings (<String> output).
// The bind method is overridden to define the transformation logic.
// Inside the bind method, the map function is used to transform each element of the input stream (stream).
// In this case, it converts each string to uppercase using toUpperCase().
class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((name) => name.toUpperCase());
  }
}
