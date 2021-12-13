import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  // const ChatTile({Key? key}) : super(key: key);

  final String imageUrl;
  final String textName;
  final String textChat;
  final String textTime;
  final bool unread;

  ChatTile({
    this.imageUrl = '',
    this.textName = '',
    this.textChat = '',
    this.textTime = '',
    this.unread = false
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(textName, style: titleTextstyle),
            SizedBox(height: 2),
            Text(textChat, style: unread ? subTitleTextstyle.copyWith(color: blackColor) : subTitleTextstyle),
          ]),
          Spacer(),
          Text(textTime,
              style: TextStyle(
                fontSize: 14,
                color: greyColor,
              ))
        ],
      ),
    );
  }
}
