import 'package:flutter/material.dart';
import 'package:inout7/home_screen.dart';
import 'package:inout7/third_screen.dart';
import 'package:inout7/topic_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        TopicDetailScreen.routeName: (ctx) => TopicDetailScreen(),
        ThirdScreen.routeName: (ctx) => ThirdScreen(),
      },
    );
  }
}
