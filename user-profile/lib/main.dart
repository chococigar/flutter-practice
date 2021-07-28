import 'package:flutter/material.dart';
import 'package:user_profile/page/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
      ),
      home: ProfilePage(),
      // debugShowCheckedModeBanner: false,
    );
  }
}