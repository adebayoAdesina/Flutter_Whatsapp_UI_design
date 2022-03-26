import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Widget/mobile_privacy_page.dart';
import 'package:my_app/Widget/mobile_security_page.dart';
import 'package:my_app/Widget/mobile_twoStep_verification_page.dart';

class MobileAccountPage extends StatelessWidget {
  const MobileAccountPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
        backgroundColor: appBarColor,
        title: Text(
          'Account',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          top: 2,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MobilePrivacyPage()
                  )
                );
              }),
              child: ListTile(
                leading: Icon(
                  Icons.lock_rounded,
                  color: Colors.white.withOpacity(0.5),
                ),
                title: Text(
                  'Privacy',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7)
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MobileSecurityPage()
                  )
                );
              }),
              child: ListTile(
                leading: Icon(
                  Icons.security_sharp,
                  color: Colors.white.withOpacity(0.5),
                ),
                title: Text(
                  'Security',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7)
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MobileTwoStepVerificationPage()
                  )
                );
              }),
              child: ListTile(
                leading: Icon(
                  Icons.featured_play_list,
                  color: Colors.white.withOpacity(0.5),
                ),
                title: Text(
                  'Two-step verfication',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7)
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.send_to_mobile_sharp,
                color: Colors.white.withOpacity(0.5),
              ),
              title: Text(
                'Change number',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7)
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.insert_chart_rounded,
                color: Colors.white.withOpacity(0.5),
              ),
              title: Text(
                'Request account info',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7)
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.delete,
                color: Colors.white.withOpacity(0.5),
              ),
              title: Text(
                'Delete my account',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7)
                ),
              ),
            ),
          ],
        ),
      ), 
    );
  }
}