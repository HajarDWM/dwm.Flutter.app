import 'package:flutter/material.dart';
import 'package:untitled1/widgeets/myDrawe.header.dart';
import 'package:untitled1/widgeets/myDrawer.item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyDraweHeader(),
          MyDrawerItem(
            title: "Home",
            itemIcon: Icon(Icons.home),
            handler: () {
              Navigator.pushNamed(context, "/home");
              Navigator.of(context).pop();
            },
          ),
          Divider(height: 1, color: Theme.of(context).primaryColor),
          MyDrawerItem(
            title: "Counter",
            itemIcon: Icon(Icons.countertops),
            handler: () {
              print("Going to /counter");
              Navigator.pushNamed(context, "/counter");
              Navigator.of(context).pop();
            },
          ),
          Divider(height: 1, color: Theme.of(context).primaryColor),
          MyDrawerItem(
            title: "Chat",
            itemIcon: Icon(Icons.chat),
            handler: () {
              Navigator.pushNamed(context, "/chat");
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
