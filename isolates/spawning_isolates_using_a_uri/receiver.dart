import 'dart:isolate';

void main(List<String> args) async {
  // Creating a Uri object to specify the path of the code to be executed
  // by the spawned isolate.
  final uri = Uri.parse('message path');

  // Creating a ReceivePort, which is used for receiving messages from
  // other isolates.
  final rp = ReceivePort();

  // Spawning a new isolate using Isolate.spawnUri. This function takes
  // the URI of the code to be executed, an empty list of arguments, and
  // a SendPort for sending messages to the spawned isolate.
  Isolate.spawnUri(uri, [], rp.sendPort);

  // Waiting for the first message to be received on the ReceivePort.
  final firstMessage = await rp.first;

  // Printing the first received message.
  print(firstMessage);
}
