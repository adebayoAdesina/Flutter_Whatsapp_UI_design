import 'package:flutter/material.dart';
import 'package:my_app/Widget/contact_list.dart';
import 'package:my_app/Widget/mobile_status.dart';

import '../Colors/colors.dart';

class MobileStatus extends StatelessWidget {
  const MobileStatus({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MobileStatusView(),
      
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
        ),
    );
  }
}