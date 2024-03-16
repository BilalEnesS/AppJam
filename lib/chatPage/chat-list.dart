import 'package:flutter/material.dart';
import 'chat-user.dart';

class ConversationList extends StatelessWidget {
  final ChatUser user;

  const ConversationList({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Burada sohbet detayları sayfasına yönlendirebilirsiniz
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user.imageURL),
              radius: 30,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    user.messageText,
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Text(
              user.time,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
