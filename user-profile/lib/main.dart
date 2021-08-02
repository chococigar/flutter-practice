import 'package:flutter/material.dart';
import 'package:user_profile/page/edit_profile_page.dart';
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
        dividerColor: Colors.black,
      ),
      home: EditProfilePage(),
      // debugShowCheckedModeBanner: false,
    );
  }
}
