import 'package:chat_ui/widgets/category_selector.dart';
import 'package:chat_ui/widgets/chats.dart';
import 'package:chat_ui/widgets/favorites.dart';
import 'package:flutter/material.dart';

import '../widgets/category_selector.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu), 
          onPressed: (){}),
        title: Center(child: Text("Chats",)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: (){})
        ],),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Favorites(),
                    Chats()
                  ],
                ),
              ),
            ),
            
          ],
        ),
    );
  }
}