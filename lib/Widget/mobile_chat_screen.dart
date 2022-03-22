import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Widget/chat_list.dart';

import 'info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        // leading: const CircleAvatar(
        //   backgroundImage: NetworkImage(''),
        //   radius: 20,
        // ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.video_call)
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.call)
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.more_vert)
          )
        ],
      ),
      body: Column(
        // Chat list
        children: [
          const Expanded(
            child: ChatList()
          ),
          TextField(
            decoration: InputDecoration(
              fillColor: dividerColor,
              filled: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    Icon(Icons.emoji_emotions, color: Colors.grey,),
                    
                  ],
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.camera_alt, color: Colors.grey,),
                    Icon(Icons.attach_file, color: Colors.grey,),
                    Icon(Icons.money,  color: Colors.grey,),
                  ],
                ),
                  
              ),
              hintText: 'Type a message',
              hintStyle: const TextStyle(
                color: Colors.white10
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style:  BorderStyle.none
                )
              ),
              contentPadding: const EdgeInsets.all(10)
            ),
          )
        ],
      ),
    );  
  }
}