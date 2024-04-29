import 'dart:async';

void main(List<String> args) async {
  await for (final name in getNames().absorbeErrorsUsingHandleError()) {
    print(name);
  }
  print('-------------------------------');
  await for (final name in getNames().absorbeErrorsUsingHandlers()) {
    print(name);
  }
  print('-------------------------------');
  await for (final name in getNames().absorbeErrorUsingTransformer()) {
    print(name);
  }
}

extension AbsorbeErrors<T> on Stream<T> {
  Stream<T> absorbeErrorsUsingHandleError() => handleError((_, __) => {});
  Stream<T> absorbeErrorsUsingHandlers() => transform(
        StreamTransformer.fromHandlers(
          handleError: (error, stackTrace, sink) {
            print('--------');
            print(error);
            return sink.close();
          },
        ),
      );
  Stream<T> absorbeErrorUsingTransformer() => transform(StreamErrorAbsorber());
}

class StreamErrorAbsorber<T> extends StreamTransformerBase<T, T> {
  @override
  Stream<T> bind(Stream<T> stream) {
    final controller = StreamController<T>();

    stream.listen(
      controller.sink.add,
      onError: (error) {
        print('Error: $error');
      },
      onDone: controller.close,
    );

    return controller.stream;
  }
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  throw 'All out of names';
}
