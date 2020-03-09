import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int index = 0;
  final List<String> options = ["Messages", "Online", "Groups", "Requests"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  options[index],
                  style: TextStyle(
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.white30,
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      letterSpacing: 1.5),
                ),
              ),
            );
          }),
    );
  }
}
