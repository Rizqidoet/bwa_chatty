import 'package:bwa_chatty/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/chat_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      home: HomePage(),
    );
  }
}
