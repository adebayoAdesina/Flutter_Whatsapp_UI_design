import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Widget/contact_list.dart';

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
        body: const ContactList(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      )
    );
  }
}