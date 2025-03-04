import 'package:chat_app/services/auth/Login_or_register.dart';
import 'package:chat_app/pages/Home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              //user is logged in
              if (snapshot.hasData) {
                return const HomePage();
              }

              //user is not logged in not
              else {
                return const LoginOrRegister();
              }
            }));
  }
}
