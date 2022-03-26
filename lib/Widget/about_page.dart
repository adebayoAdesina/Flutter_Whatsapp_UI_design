import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Widget/info.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          'About'
        ),
        actions: [
          PopupMenuButton(
            color: appBarColor,
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text('Delete all')
              )
            ],
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            )
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Currently set to',
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
            ),
            GestureDetector(
              onTap: (() {
                
              }),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ownerDetails['status'].toString()
                    ),
                    const Icon(
                      Icons.edit,
                      color: tabColor,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}