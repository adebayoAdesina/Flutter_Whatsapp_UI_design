import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Widget/about_page.dart';

import 'info.dart';

class MobileProfilePage extends StatelessWidget {
  const MobileProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          'Profile',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 75,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: tabColor,
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Icon(Icons.photo_camera_rounded),
                    )
                  )
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 2.5,
              left: 10,
              bottom: 2.5,
            ),
            child: ListTile(
              leading: Icon(
                Icons.person_outline_sharp,
                color: Colors.white.withOpacity(0.5)
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 1,
                      bottom: 9
                    ),
                    child: Text(
                      ownerDetails['name'].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
              
              subtitle: const Text(
                'This is not your username or pin. This name will be visible to your WhatsApp contacts',
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              trailing: const Icon(
                Icons.edit, 
                color: tabColor,
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => const AboutPage())
                )
              );
            }),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 2.5,
                left: 10,
                bottom: 2.5,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.circle_outlined,
                  color: Colors.white.withOpacity(0.5)
                ),
                title: Text(
                  'About',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                
                subtitle: Text(
                  ownerDetails['status'].toString(),
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                trailing: const Icon(
                  Icons.edit, 
                  color: tabColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 2.5,
              left: 10,
              bottom: 2.5,
            ),
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.white.withOpacity(0.5)
              ),
              title: Text(
                'Phone',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              
              subtitle: Text(
                ownerDetails['phoneNumber'].toString(),
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}