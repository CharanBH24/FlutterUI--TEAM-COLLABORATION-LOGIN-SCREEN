import 'package:flutter/material.dart';
import 'package:team_collaboration_ui/screens/home_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Team Collaboration App',
      home: HomeScreen(),
    );
  }
}
