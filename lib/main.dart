import 'package:flutter/material.dart';
import 'package:traveler_project/chatPage/chat-page.dart';
import 'package:traveler_project/traveler.dart';

import 'main2.dart';
import 'messages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anasayfa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatIconPage(),
    );
  }
}

class ChatIconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anasayfa'),
      ),
      body: Container(
        child: Center(
          child: Text("Anasayfa"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          if (index == 0) {
            // ChatPage'e yönlendirme
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatPage()),
            );
          }
          else if (index == 1) {
            // Yeni bir boş sayfaya yönlendirme
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MessagesPage(title: "Channels", messages: [],)),
            );
          }
          else if (index == 2) {
            // Yeni bir boş sayfaya yönlendirme
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatDetailPage()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chats",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: "Channels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
