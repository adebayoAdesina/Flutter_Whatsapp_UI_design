import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';

import 'info.dart';

class MobileCallInfo extends StatelessWidget {
  
  const MobileCallInfo({ Key? key, 
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Call info'),
        backgroundColor: appBarColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.comment)
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert)
          )
        ],
      ),
      // body: Padding(
      //   padding: const EdgeInsets.only(top: 10),
      //   child: Expanded(
      //     child: ListTile(
      //       title: Text(
      //         'hello',
      //         style: const TextStyle(
      //             fontSize: 18,
      //           ),
      //         ),
      //         subtitle: 
      //           const Padding(
      //             padding: EdgeInsets.only(top: 6),
      //             child: Text(
      //               'Status',
      //               style: TextStyle(
      //                 fontSize: 15,
      //               ),
      //             ),
      //           ),
      //       leading: CircleAvatar(
      //         radius: 30,
      //         backgroundImage: NetworkImage(''),
      //       ),
      //       trailing: Row(
      //         children: const [
      //           Icon(Icons.call, color: tabColor,),
      //           Icon(Icons.videocam_sharp, color: tabColor,),
      //         ],
      //       )
      //     ),
      //   ),
      // ),
    );
  }
}