import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  final List<Map<String, String>> messages;

  const MessagesPage({Key? key, required this.messages, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
            title: Text(message['content']!),
            subtitle: Text(message['role']!),
          );
        },
      ),
    );
  }
}
