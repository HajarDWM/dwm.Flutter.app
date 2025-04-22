import 'package:flutter/material.dart';
import 'package:untitled1/widgeets/myDrawer.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
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
