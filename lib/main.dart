import 'package:flutter/material.dart';
import 'package:untitled1/pages/chat.page.dart';
import 'package:untitled1/pages/counter.page.dart';
import 'package:untitled1/pages/home.page.file.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/counter": (context) => CounterPage(),
        "/chat": (context) => ChatPage(),
      },

      /// test
      theme: ThemeData(
        indicatorColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          primary: Colors.deepOrange,
        ),
      ),
      home: HomePage(),
    );
  }
}
