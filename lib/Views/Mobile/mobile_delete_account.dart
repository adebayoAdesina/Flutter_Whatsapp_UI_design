import 'package:flutter/material.dart';

import '../../Colors/colors.dart';

class MobileDeleteAccount extends StatefulWidget {
  const MobileDeleteAccount({ Key? key }) : super(key: key);

  @override
  State<MobileDeleteAccount> createState() => _MobileDeleteAccountState();
}

class _MobileDeleteAccountState extends State<MobileDeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          'Delete my account',
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                "Changing your phone number will migrate your account info, groups & settings",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9)
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Before proceeding, please confirm that you are able to receive SMS or calls at your new number.",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6)
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'If you have both a new phone & a new number, first change your number on your old phone.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.6)
              ),
              textAlign: TextAlign.center,
            ),
            
          ],
        ),
      ),
    );
  }
}