import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';

import 'info.dart';

class MobileStatusView extends StatelessWidget {
  const MobileStatusView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8
          ),
          child: ListTile(
            leading: Stack(
              children: const[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Icon(
                    Icons.add_circle,
                    color: tabColor,
                    size: 30,
                  ),
                )
            ]
            ),
            title: const Text(
              'My Status',
              style: TextStyle(
                fontWeight: FontWeight.w700
              ),
            ),
            subtitle: const Text(
              'Tap to add status update',
              style: TextStyle(
                color: Colors.grey
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5,
            bottom: 5,
            left: 15
          ),
          child: Row(
            children: const [
              Text(
                'Recent updates',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
      
    );
  }
}