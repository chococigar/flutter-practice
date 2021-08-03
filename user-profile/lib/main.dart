import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_profile/page/profile_page.dart';
import 'package:user_profile/themes.dart';
import 'package:user_profile/utils/user_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: MyThemes.darkTheme,
        child: Builder(
          builder: (context) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeProvider.of(context),
          home: ProfilePage(),
          debugShowCheckedModeBanner: false,
          ),
      ),
    );
  }
}
