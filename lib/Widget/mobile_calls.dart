import 'package:flutter/material.dart';
import 'package:my_app/Widget/mobile_call_info.dart';

import '../Colors/colors.dart';
import 'info.dart';

class MobileCallsView extends StatelessWidget {
  const MobileCallsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    const MobileCallInfo()
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: ListTile(
                    title: Text(
                      calls[index]['name'].toString(),
                      style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      subtitle: 
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Row(
                            children: [
                              Icon(
                                (calls[index]['isMe'] == true) ?
                                  Icons.call_made_rounded : Icons.call_received_rounded
                                , color: (calls[index]['isMe'] == true) ?
                                  tabColor : Colors.red, size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${calls[index]['date'].toString()},',
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '${calls[index]['time'].toString()},',
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(calls[index]['profilePic'].toString()),
                    ),
                    trailing: Icon(
                      (calls[index]['isVideo'] == true) ? Icons.videocam_sharp :Icons.call,
                      color: tabColor,
                    )
                  ),
                ),
              ),
              const Divider(color: dividerColor, indent: 85)
            ],
          );
        }
      ),
    );
  }
}