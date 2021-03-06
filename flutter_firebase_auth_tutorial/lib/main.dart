import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_tutorial/authentication_service.dart';
import 'package:firebase_authentication_tutorial/page/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Todo App With Firebase';

  @override
  Widget build(BuildContext context) {
    log("myapp main");
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authStateChanges,
        )
      ],
      child: MaterialApp(
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    log("back in main.dart authentication wrapper");

    /*
    if (firebaseUser != null) {
      log('data: IS FIREBASE USER');
      return HomePage();
    }
    */
    return SignInPage();
  }
}
