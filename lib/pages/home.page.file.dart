import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/profile.jpg"),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/profile.jpg"),
                    radius: 30,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Theme.of(context).primaryColor],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/home");
              },
            ),
            Divider(height: 1, color: Theme.of(context).primaryColor),
            ListTile(
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Counter"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              },
            ),
            Divider(height: 1, color: Theme.of(context).primaryColor),
            ListTile(
              leading: Icon(Icons.chat),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Chat"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/chat");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
