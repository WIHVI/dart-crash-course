import 'dart:isolate';

void main(List<String> args) async {
  await for (var msg in getMessages().take(5)) {
    print(msg);
  }
}

/* Stream<String> getMessages() {
  final rp = ReceivePort();
  return Isolate.spawn(_getMessages, rp.sendPort)
      .asStream()
      .asyncExpand((_) => rp)
      .takeWhile((element) => element is String)
      .cast();
} */

Stream<String> getMessages() async* {
  final rp = ReceivePort();
  await Isolate.spawn(_getMessages, rp.sendPort);
  final messages = rp.takeWhile((element) => element is String).cast<String>();
  await for (final msg in messages) {
    yield msg;
  }
}

void _getMessages(SendPort sp) async {
  await for (var now in Stream.periodic(
    const Duration(milliseconds: 1000),
    (_) => DateTime.now().toIso8601String(),
  )) {
    sp.send(now);
  }
}
