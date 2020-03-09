import 'package:chat_app_ui/screens/chats.dart';
import 'package:chat_app_ui/screens/messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DummyChats(chat.sender)));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        color: chat.unread ? Color(0xFFE8F5E9) : Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 8, bottom: 4),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage(chat.sender.imageUrl),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    chats[index].sender.name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Text(
                                      chats[index].text,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blueGrey),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                chat.time,
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              chat.unread
                                  ? Container(
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      alignment: Alignment.center,
                                      width: 40,
                                      height: 20,
                                      child: Text(
                                        "New",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ))
                                  : Text(''),
                            ],
                          ),
                        ]),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
