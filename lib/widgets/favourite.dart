import 'package:chat_app_ui/screens/chats.dart';
import 'package:chat_app_ui/screens/messages.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0))),
      child: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Favourite Contacts",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    color: Colors.brown,
                    iconSize: 30,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 110,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemCount: favourite.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DummyChats(favourite[index])));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            favourite[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.brown),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage(favourite[index].imageUrl),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
