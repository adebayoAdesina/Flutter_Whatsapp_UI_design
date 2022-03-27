import 'package:flutter/material.dart';

import '../../Colors/colors.dart';

class MobileSecurityPage extends StatefulWidget {
  const MobileSecurityPage({ Key? key }) : super(key: key);

  @override
  State<MobileSecurityPage> createState() => _MobileSecurityPageState();
}
bool _isSwitchedOn = false;
class _MobileSecurityPageState extends State<MobileSecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          'Security',
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: tabColor.withOpacity(0.4),
                      radius: 70,
                    ),
                    
                    const Positioned(
                      top: 22,
                      left: 22,
                      child: Icon(Icons.shield, size: 100, )
                    ),
                    const Positioned(
                      top: 50,
                      left: 50,
                      child: Icon(Icons.lock_rounded, color: tabColor, size: 45,)
                    ),
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                "Messages and calls in end-to-end encrypted chats stay between you and the people you choose. Not even WhatsApp can read or listen to them.",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9)
                ),
              ),
            ),
            SwitchListTile(
              activeColor: tabColor,
              value: _isSwitchedOn, 
              onChanged: (bool value) {
                setState(() {
                  _isSwitchedOn = value;
                });
              },
              title: Text(
                'Show security notification',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9)
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      bottom: 2
                    ),
                    child: Text(
                      'Get notified when your security code changes for a contact in an end-to-end encrypted chat.'
                    ),
                  ),
                  Text(
                    'Learn more',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}