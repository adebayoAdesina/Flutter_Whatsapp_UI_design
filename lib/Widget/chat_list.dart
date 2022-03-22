import 'package:flutter/material.dart';
import 'package:my_app/Widget/info.dart';
import 'package:my_app/Widget/my_message_card.dart';
import 'package:my_app/Widget/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index){
        if (messages[index]['isMe'] == true) {
          // my message => card
          return MyMessageCard(
            message: messages[index]['text'].toString(), 
            date: messages[index]['time'].toString()
          );
        }
        else {
          // sender message => card
          return SenderMessageCard(
            message: messages[index]['text'].toString(), 
            date: messages[index]['time'].toString()
          );
        }
      }
    );
  }
}