import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Mobile_Tabs/MobileCalls.dart';
import 'package:my_app/Mobile_Tabs/MobileChat.dart';
import 'package:my_app/Mobile_Tabs/MobileStatus.dart';
import 'package:my_app/Widget/contact_list.dart';
import 'package:my_app/Widget/mobile_calls.dart';
import 'package:my_app/Widget/mobile_status.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.search, color: Colors.grey,)
            ),
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.more_vert, color: Colors.grey,)
            )
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              )
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            MobileChat(),
            MobileStatus(),
            MobileCalls()
          ]
        ),
        
      )
    );
  }
}