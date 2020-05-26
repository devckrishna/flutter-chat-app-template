import 'package:chat_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[300],
        accentColor: Colors.blue[50]
        ),
      home: HomeScreen(),
    );
  }
}