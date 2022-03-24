import 'package:flutter/material.dart';
import 'package:my_app/Widget/contact_list.dart';

import '../Colors/colors.dart';

class MobileChat extends StatelessWidget {
  const MobileChat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ContactList(),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
    );
  }
}