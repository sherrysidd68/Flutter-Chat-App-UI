import 'package:chat_app_ui/widgets/category.dart';
import 'package:chat_app_ui/widgets/favourite.dart';
import 'package:flutter/material.dart';

import 'widgets/chatScreen.dart';

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
        //centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          onPressed: () {},
        ),
        title: Text(
          "Chats",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Category(),
          Favourite(),
          ChatScreen(),
        ],
      ),
    );
  }
}
