import 'package:flutter/material.dart';

class ChatMessage {
  final String content;
  final String role;

  ChatMessage({required this.content, required this.role});
}

class ChatsPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatsPage> {
  final List<ChatMessage> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage(String messageContent) {
    setState(() {
      _messages.add(ChatMessage(content: messageContent, role: 'user'));
    });
    _controller.clear();
    // Burada, karşı tarafın yanıtını simüle edebilirsiniz
    _simulateReply();
  }

  void _simulateReply() {
    // Karşı tarafın yanıtı
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _messages.add(ChatMessage(content: 'Bu bir yanıttır.', role: 'assistant'));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ListTile(
                  title: Text(message.content),
                  subtitle: Align(
                    alignment: message.role == 'user' ? Alignment.centerRight : Alignment.centerLeft,
                    child: Text(message.role),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(hintText: 'Mesajınızı yazın...'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    final message = _controller.text.trim();
                    if (message.isNotEmpty) {
                      _sendMessage(message);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChatsPage(),
  ));
}
