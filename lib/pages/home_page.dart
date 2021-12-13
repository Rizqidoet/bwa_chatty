import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: greenColor,
          onPressed: () {},
          child: 
            Icon(Icons.add, size: 28),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset('assets/images/user_profile.png',
                    height: 100, width: 100),
                SizedBox(height: 20),
                Text("Binar Fadila",
                    style: TextStyle(color: whiteColor, fontSize: 20)),
                SizedBox(height: 2),
                Text("Manager Development",
                    style: TextStyle(color: blueLightColor, fontSize: 16)),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text("Personal Chats", style: titleTextstyle),
                      ChatTile(
                        imageUrl: 'assets/images/friend_list1.png',
                        textName: 'Bentala Fadila',
                        textChat: 'sis, nanti kalo pulang niti...',
                        textTime: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend_list1.png',
                        textName: 'RI-1',
                        textChat: 'pulang jam brp bi ?? baba jemp..',
                        textTime: '08.56',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend_list2.png',
                        textName: 'RI-2',
                        textChat: 'sis, manda nanti nitip beli es bob...',
                        textTime: 'Now',
                        unread: true,
                      ),
                      SizedBox(height: 40),
                      Text("Groups", style: titleTextstyle),
                      ChatTile(
                        imageUrl: 'assets/images/group_list1.png',
                        textName: 'Push Rank = Tipes!!',
                        textChat: 'Login jam brpe nih guys...',
                        textTime: '19.23',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_list2.png',
                        textName: 'Para Pencari Tuhan',
                        textChat: 'Inti nya ntar jadi apa ka...',
                        textTime: '19.30',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_list3.png',
                        textName: 'Bukit Duri Allbase',
                        textChat: 'Cilok, akun shopipud pinjem dong...',
                        textTime: '20.12',
                        unread: false,
                      ),
                      
                      SizedBox(height: 20,)
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
