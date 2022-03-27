import 'package:flutter/material.dart';
import 'package:my_app/Colors/colors.dart';
import 'package:my_app/Widget/contact_list.dart';

class MobileAppBarSearch extends StatelessWidget {
  const MobileAppBarSearch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            fillColor: appBarColor,
            filled: true,
            focusColor: appBarColor,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none
              )
            )
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: appBarColor,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10, 
                bottom: 18
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.photo, 
                            color: Colors.grey, 
                            size: 16,
                          ),
                          SizedBox(width: 1,),
                          Text(
                            'Photos', 
                            style:  TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.videocam_rounded,
                            color: Colors.grey, 
                            size: 16,
                          ),
                          SizedBox(width: 1,),
                          Text(
                            'Videos', 
                            style:  TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.link_rounded,
                            color: Colors.grey, 
                            size: 16,
                          ),
                          SizedBox(width: 1,),
                          Text(
                            'Links', 
                            style:  TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.gif_box,
                            color: Colors.grey, 
                            size: 16,
                          ),
                          SizedBox(width: 1,),
                          Text(
                            'GIFs', 
                            style:  TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.headset,
                            color: Colors.grey, 
                            size: 16,
                          ),
                          SizedBox(width: 1,),
                          Text(
                            'Audio', 
                            style:  TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.featured_play_list_rounded,
                            color: Colors.grey, 
                            size: 16,
                          ),
                          SizedBox(width: 1,),
                          Text(
                            'Documents', 
                            style:  TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const ContactList()
        ],
      ),
    );
  }
}