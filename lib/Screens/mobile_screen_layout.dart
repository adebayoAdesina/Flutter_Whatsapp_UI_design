import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Mobile_Tabs/MobileCalls.dart';
import 'package:my_app/Mobile_Tabs/MobileChat.dart';
import 'package:my_app/Mobile_Tabs/MobileStatus.dart';
import 'package:my_app/Widget/contact_list.dart';
import 'package:my_app/Views/Mobile/mobile_appbar_search.dart';
import 'package:my_app/Views/Mobile/mobile_calls.dart';
import 'package:my_app/Views/Mobile/mobile_settings_page.dart';
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
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => 
                  const MobileAppBarSearch()
                ));
              }, 
              icon: const Icon(Icons.search, color: Colors.grey,)
            ),
            PopupMenuButton(
              // elevation: 5,
              color: appBarColor,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'New group', 
                    style: TextStyle(fontSize: 15),
                  )
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text(
                    'New broadcast', 
                    style: TextStyle(fontSize: 15),
                  )
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text(
                    'Linked devices', 
                    style: TextStyle(fontSize: 15),
                  )
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text(
                    'Starred messages', 
                    style: TextStyle(fontSize: 15),
                  )
                ),
                PopupMenuItem(
                  
                  value: 5,
                  child: InkWell(
                    onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MobileSettingsPage()
                      )
                    );
                  }),
                    child: const Text(
                      'Settings', 
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ),
              ],
              icon:  const Icon(Icons.more_vert, color: Colors.grey,)
              // ),
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