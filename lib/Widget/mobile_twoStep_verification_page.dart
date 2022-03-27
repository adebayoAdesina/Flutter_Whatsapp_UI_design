

import 'package:flutter/material.dart';

import '../Colors/colors.dart';

class MobileTwoStepVerificationPage extends StatefulWidget {
  const MobileTwoStepVerificationPage({ Key? key }) : super(key: key);

  @override
  State<MobileTwoStepVerificationPage> createState() => _MobileTwoStepVerificationPageState();
}

class _MobileTwoStepVerificationPageState extends State<MobileTwoStepVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          'Two-step verification',
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
                      child: Icon(Icons.fiber_pin, size: 100, )
                    ),
                    Positioned(
                      top: 90,
                      left: 90,
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Icon(
                          Icons.check_circle, 
                          color: tabColor, 
                          size: 45,
                        ),
                      )
                    ),
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Two-step verification is enabled. You'll need to enter your PIN when registering your phone number with WhatsApp again.",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 12
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Divider(
              color: Colors.white.withOpacity(0.2),
            ),
            ListTile(
              leading: Icon(
                Icons.cancel, 
                color: Colors.white.withOpacity(0.6),
                size: 22
              ),
              title: Text(
                'Disable',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 15
                ),
                
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.padding_rounded,
                color: Colors.white.withOpacity(0.6),
                size: 22
              ),
              title: Text(
                'Change PIN',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 15
                ),
                
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email_rounded,
                color: Colors.white.withOpacity(0.6),
                size: 22
              ),
              title: Text(
                'Change email address',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 15
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}