import 'package:flutter/material.dart';
import 'package:my_app/Views/Mobile/mobile_calls.dart';

import '../Colors/colors.dart';

class MobileCalls extends StatelessWidget {
  const MobileCalls({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MobileCallsView(),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.add_call,
            color: Colors.white,
          ),
        ),
    );
  }
}