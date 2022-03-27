import 'package:flutter/material.dart';
import 'package:my_app/Views/Mobile/mobile_change_Number_page.dart';

import '../../Colors/colors.dart';

class MobileChangeNumber extends StatelessWidget {
  const MobileChangeNumber({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          'Change number',
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
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
                      top: 45,
                      left: 0,
                      child: Icon(
                        Icons.sim_card_rounded,
                        color: Colors.white, 
                        size: 60,)
                    ),
                    const Positioned(
                      top: 55,
                      left: 55,
                      child: Icon(
                        Icons.pending_outlined,
                        color: Colors.white, 
                        size: 30,)
                    ),
                    const Positioned(
                      top: 45,
                      left: 80,
                      child: Icon(
                        Icons.sim_card_rounded,
                        color: Colors.white, 
                        size: 60,)
                    ),
                  ]
                ),
              ),
            ),
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
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: tabColor,
              elevation: 0
            ), 
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> 
                    const MobileChangeNumberPage()
                  )
                ); 
            }, 
            child: const Text('Next')
          ),
        ],
      )
    );
  }
}