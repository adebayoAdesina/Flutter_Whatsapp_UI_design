import 'package:flutter/material.dart';

import '../../Colors/colors.dart';

class MobileChangeNumberPage extends StatefulWidget {
  const MobileChangeNumberPage({ Key? key }) : super(key: key);

  @override
  State<MobileChangeNumberPage> createState() => _MobileChangeNumberPageState();
}

class _MobileChangeNumberPageState extends State<MobileChangeNumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
        backgroundColor: appBarColor,
        title: Text(
          'Change number',
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Enter your old phone number with country code:',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    )
                  ),
                  ),
                ),
                const SizedBox(width: 10,),
                const Expanded(
                  flex: 9,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hoverColor: tabColor,
                      hintText: 'Phone number',
                    )
                  ),
                    
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Enter your new phone number with country code:',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    )
                  ),
                  ),
                ),
                const SizedBox(width: 10,),
                const Expanded(
                  flex: 9,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hoverColor: tabColor,
                      hintText: 'Phone number',
                    )
                  ),
                    
                )
              ],
            )
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