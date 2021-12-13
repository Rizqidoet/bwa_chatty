import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueBgColor,
      body: SafeArea(
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    // borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))
                  ),
                  child: 
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/friend_list1.png',height: 55,width: 55,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('RI-1', style: titleTextstyle),
                                SizedBox(height: 2),
                                Text(
                                  'Last seen at 16.36',
                                  style: subTitleTextstyle,
                                ),
                              ]
                            ),
                            Spacer(),
                            FloatingActionButton(
                              backgroundColor: greenColor,
                              onPressed: () {},
                              child:
                                Icon(Icons.call, size: 28,)
                            ),
                          ],
                        ),
                      ],
                    )
                      
                ),

                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: blueBgColor,
                  ),
                  child: 
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/friend_list1.png', height: 40, width: 40,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
                            Image.asset('assets/images/chat1.png', height: 72, width: 180,)
                          ],
                        ),
                        SizedBox(height: 30),
                        
                        SizedBox(height: 30),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset('assets/images/chat3.png', height: 96, width: 255,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
                            Image.asset('assets/images/user_profile_polos.png', height: 40, width: 40,),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/friend_list1.png', height: 40, width: 40,),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
                            Image.asset('assets/images/chat4.png', height: 72, width: 180,),
                          ],
                        ),
                      ],
                    )
                ),
                SizedBox(height: 170),
                Container(
                  padding: EdgeInsets.all(30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: blueBgColor
                  ),
                  child: 
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(40))
                      ),
                     
                      child: 
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                            Text("Type messange. . .", style: subTitleTextstyle,),
                            Spacer(),
                            FloatingActionButton(
                              onPressed: () {},
                              child:
                                Image.asset('assets/icons/icon_submit.png')
                            ),
                            
                          ],
                        )
                    )
                )
              ],
            )
          
        ),
    );
  }
}
