import 'package:chat_app_ui/screens/users.dart';

class Message {
  final Users sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;
  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

final Users currentUser =
    Users(id: 0, name: "Sheheryar", imageUrl: "assets/images/sherry.jpg");

final Users aadi =
    Users(id: 1, name: "Aadi ", imageUrl: "assets/images/aadi.jpg");

final Users ahsan =
    Users(id: 2, name: "Ahsan", imageUrl: "assets/images/ahsan.jpg");

final Users ammad =
    Users(id: 3, name: "Ammad", imageUrl: "assets/images/ammad.jpg");

final Users chotta =
    Users(id: 4, name: "Danial", imageUrl: "assets/images/chotta.jpg");

final Users hamza =
    Users(id: 5, name: "Hamza", imageUrl: "assets/images/hamza.jpg");

final Users khan =
    Users(id: 6, name: "Arsalan", imageUrl: "assets/images/khan.jpg");

final Users mansoor =
    Users(id: 7, name: "Mansoor", imageUrl: "assets/images/mansoor.jpg");

final Users wahaj =
    Users(id: 8, name: "Wahaj", imageUrl: "assets/images/wahaj.jpg");

final Users waleed =
    Users(id: 9, name: "Waleed", imageUrl: "assets/images/waleed.jpg");

List<Users> favourite = [aadi, hamza, chotta, mansoor, waleed, ammad];

List<Message> chats = [
  Message(
    sender: aadi,
    text: "Han bhai kahan hai kia kr rha h ?",
    time: "2:20 PM",
    isLiked: true,
    unread: true,
  ),
  Message(
      sender: ahsan,
      text: "You: Kl raat me bata dunga message kr k puch lena ",
      time: "12:20 PM",
      isLiked: false,
      unread: false),
  Message(
      sender: ammad,
      text: "You: Sorry brother .. you monkey man :) ",
      time: "12:22 PM",
      unread: false,
      isLiked: true),
  Message(
      sender: chotta,
      text: "Hi bro what's up for your store?",
      time: "11:00 PM",
      isLiked: false,
      unread: true),
  Message(
      sender: hamza,
      text: "Hello sir g how are you what's going on! ",
      time: "1:00 PM",
      unread: false,
      isLiked: true),
  Message(
    sender: khan,
    text: "han bhai IBA aaja job interview karaun tera",
    time: "11:46 PM",
    isLiked: true,
    unread: true,
  ),
  Message(
      sender: mansoor,
      text: "waiting at waleed home for you bro!!",
      time: "11:22 PM",
      unread: true,
      isLiked: false),
  Message(
      sender: wahaj,
      text: "Han bhai BBQ me arha h na ?",
      time: "11:59 PM",
      isLiked: false,
      unread: false),
  Message(
    sender: waleed,
    text: "Many many congratulaions for being graduated",
    time: "12:21 PM",
    unread: false,
    isLiked: true,
  ),
];

List<Message> messages = [
  Message(
    sender: aadi,
    text: "Han bhai kahan hai kia kr rha h ?",
    time: "2:20 PM",
    isLiked: true,
    unread: false,
  ),
  Message(
      sender: ahsan,
      text: "Kl raat me bata dunga message kr k puch lena ",
      time: "12:20 PM",
      isLiked: false,
      unread: true),
  Message(
      sender: ammad,
      text: "how are monkey Man? ",
      time: "12:22 PM",
      unread: true,
      isLiked: true),
  Message(
      sender: chotta,
      text: "Hi bro what's up for your store?",
      time: "11:00 PM",
      isLiked: false,
      unread: true),
  Message(
      sender: hamza,
      text: "han sir me bhi yahi soch rha tha ",
      time: "1:00 PM",
      unread: false,
      isLiked: true),
  Message(
    sender: khan,
    text: "han bhai IBA aaja job interview karaun tera",
    time: "11:46 PM",
    isLiked: true,
    unread: true,
  ),
  Message(
      sender: mansoor,
      text: "waiting at waleed home for you bro!!",
      time: "11:22 PM",
      unread: true,
      isLiked: false),
  Message(
      sender: wahaj,
      text: "Han bhai BBQ me arha h na ?",
      time: "11:59 PM",
      isLiked: false,
      unread: false),
  Message(
    sender: waleed,
    text: "Many many congratulaions for being graduated",
    time: "12:21 PM",
    unread: false,
    isLiked: true,
  ),
];
