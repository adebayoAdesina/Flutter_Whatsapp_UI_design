import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Widget/info.dart';
import 'package:my_app/Widget/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    const MobileChatScreen()
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      subtitle: 
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            info[index]['message'].toString(),
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(color: dividerColor, indent: 85)
            ],
          );
        },
      ),
    );
  }
}