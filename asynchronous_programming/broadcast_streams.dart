import 'dart:async';

void main(List<String> args) async {
  // nonBroadcastStreamExample();
  await broadcastStreamExample();
}

Future<void> nonBroadcastStreamExample() async {
  final controller = StreamController<String>();
  controller.sink.add('Bob');
  controller.sink.add('Alice');
  controller.sink.add('Joe');

  final names = controller.stream;

  try {
    await for (var name in names) {
      print(name);
      await for (var name in names) {
        print(name);
      }
    }
  } catch (e) {
    print(e);
  }
}

Future<void> broadcastStreamExample() async {
  late final StreamController<String> controller;
  controller = StreamController<String>.broadcast();

  final sub1 = controller.stream.listen((name) {
    print('sub1: $name');
  });

  final sub2 = controller.stream.listen((name) {
    print('sub2: $name');
  });

  controller.sink.add('Bob');
  controller.sink.add('Alice');
  controller.sink.add('Joe');
  controller.close();

  controller.onCancel = () {
    print('onCancel');
    sub1.cancel();
    sub2.cancel();
  };
}
