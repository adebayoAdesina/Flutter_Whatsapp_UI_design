import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Widget/info.dart';
import 'package:my_app/Views/Mobile/mobile_account_page.dart';
import 'package:my_app/Views/Mobile/mobile_profile_page.dart';

class MobileSettingsPage extends StatelessWidget {
  const MobileSettingsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          'Settings'
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                onTap: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MobileProfilePage()
                    )
                  );
                }),
                leading: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32,
                    ),
                title: Text(
                  ownerDetails['name'].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w500
                  ),
                ),
                subtitle: Text(
                  ownerDetails['status'].toString(),
                  style: const TextStyle(
                    color: Colors.grey
                  ),
                ),
                trailing: IconButton(
                  onPressed: (){}, 
                  icon: const Icon(
                    Icons.qr_code,
                    color: tabColor,
                    size: 27,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white.withOpacity(0.2),
            ),
            const SizedBox(
              height: 18,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> 
                    const MobileAccountPage()
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
                    Icons.vpn_key_rounded,
                    color: Colors.white.withOpacity(0.5)
                  ),
                  title: Text(
                    'Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  subtitle: const Text(
                    'Privacy, security, change number',
                    style: TextStyle(
                      color: Colors.grey
                    ),
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
                  Icons.comment,
                  color: Colors.white.withOpacity(0.5)
                ),
                title: Text(
                  'Chats',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                subtitle: const Text(
                  'Theme, wallpaper, chat history',
                  style: TextStyle(
                    color: Colors.grey
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
                  Icons.notifications,
                  color: Colors.white.withOpacity(0.5)
                ),
                title: Text(
                  'Notification',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                subtitle: const Text(
                  'Message, group & call tones',
                  style: TextStyle(
                    color: Colors.grey
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
                  Icons.donut_large_sharp,
                  color: Colors.white.withOpacity(0.5)
                ),
                title: Text(
                  'Storage and data',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                subtitle: const Text(
                  'Network usage, auto-download',
                  style: TextStyle(
                    color: Colors.grey
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
                  Icons.help_outline_sharp,
                  color: Colors.white.withOpacity(0.5)
                ),
                title: Text(
                  'Help',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                subtitle: const Text(
                  'Help center, contact us, privacy policy',
                  style: TextStyle(
                    color: Colors.grey
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
                  Icons.people_alt,
                  color: Colors.white.withOpacity(0.5)
                ),
                title: Text(
                  'Invite a friend',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12,),
            Center(
              child: Column(
                children: [
                  Text('from',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  Text('github.com/adebayoAdesina',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18
                    ),
                  ),
                ],
              ),
            )
      
          ],
        ),
      )
    );
  }
}