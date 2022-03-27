import 'package:flutter/material.dart';

import '../../Colors/colors.dart';

class MobilePrivacyPage extends StatefulWidget {
  const MobilePrivacyPage({ Key? key }) : super(key: key);

  @override
  State<MobilePrivacyPage> createState() => _MobilePrivacyPageState();
}

class _MobilePrivacyPageState extends State<MobilePrivacyPage> {
  bool _isSwitchedOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
        backgroundColor: appBarColor,
        title: Text(
          'Privacy',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            top: 2,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 8
                    ),
                    child: Text(
                      'Who can see my personal info',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                      left: 8
                    ),
                    child: Text(
                      "if you don't share your Last Seen you won't be able to see other people's Last Seen",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: (() {
                  
                }),
                child: ListTile(
                  title: Text(
                    'Last seen',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  subtitle: const Text(
                    'Nobody',
                    style:  TextStyle(
                      fontSize: 12
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  
                }),
                child: ListTile(
                  title: Text(
                    'Profile photo',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  subtitle: const Text(
                    'Everyone',
                    style:  TextStyle(
                      fontSize: 12
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  
                }),
                child: ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  subtitle: const Text(
                    'Everyone',
                    style:  TextStyle(
                      fontSize: 12
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  
                }),
                child: ListTile(
                  title: Text(
                    'Status',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  subtitle: const Text(
                    'No contact excluded',
                    style:  TextStyle(
                      fontSize: 12
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  
                }),
                child: SwitchListTile(
                  activeColor: tabColor,
                  value: _isSwitchedOn, 
                  onChanged: (bool value){
                    setState(() {
                      _isSwitchedOn = value;
                    });
                  },
                  title: Text(
                    'Read receipts',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  subtitle: const Text(
                    "If turned off, you wont't send or receive Read receipts. Read receipts are always sent for group chats.",
                    style:  TextStyle(
                      fontSize: 12
                    ),
                  ),
                )
              ),
              GestureDetector(
                onTap: (() {
                  
                }),
                child: ListTile(
                  title: Text(
                    'Groups',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  subtitle: const Text(
                    'My contacts',
                    style:  TextStyle(
                      fontSize: 12
                    ),
                  ),
                ),
              ),
                          GestureDetector(
                onTap: (() {
                  
                }),
                child: ListTile(
                  title: Text(
                    'Live location',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  subtitle: const Text(
                    'None',
                    style:  TextStyle(
                      fontSize: 12
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  
                }),
                child: ListTile(
                  title: Text(
                    'Blocked contact',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  subtitle: const Text(
                    '1',
                    style:  TextStyle(
                      fontSize: 12
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}