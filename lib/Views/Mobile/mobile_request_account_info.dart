import 'package:flutter/material.dart';

import '../../Colors/colors.dart';

class MobileRequestAccountInfo extends StatelessWidget {
  const MobileRequestAccountInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          'Request account info',
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
                      backgroundColor: Colors.white.withOpacity(0.5),
                      radius: 70,
                    ),
                    
                    const Positioned(
                      top: 22,
                      left: 22,
                      child: Icon(Icons.note_add, size: 100, )
                    ),
                    
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: const TextSpan(
                  text: "Create a report of your WhatsApp account information and settings, which you can access or port to another app. This report does not include your messages.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                      text: ' Learn More',
                      style: TextStyle(
                        color: Colors.blue
                      )
                    )
                  ]
                )
              )
            
            ),
            const SizedBox(
              height: 18,
            ),
            Divider(
              color: Colors.white.withOpacity(0.2),
            ),
            ListTile(
              leading: Icon(
                Icons.note_add, 
                color: Colors.white.withOpacity(0.6),
                size: 22
              ),
              title: Text(
                'Request report',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 15
                ),
                
              ),
            ),
            
            Divider(
              color: Colors.white.withOpacity(0.2),
            ),
          ],
        ),
      )
    );
  }
}