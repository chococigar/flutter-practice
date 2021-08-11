import 'package:firebase_authentication_tutorial/authentication_service.dart';
import 'package:firebase_authentication_tutorial/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
            },
            child: Text("Sign in"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToSignUpPage(context);
            },
            child: Text("Sign up"),
          )
        ],
      ),
    );
  }

  // usage: signin page --> signup page
  void _navigateToSignUpPage(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => SignUpPage()
        )
    );
  }
}
