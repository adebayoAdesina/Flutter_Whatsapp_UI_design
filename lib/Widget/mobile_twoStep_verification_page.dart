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
      body: Column(
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
          Text(
            "Two-step verification is enabled. You'll need to enter your PIN when registering your phone number with WhatsApp again.",
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 10
            ),
          ),
          
        ],
      ),
    );
  }
}