import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_clone/screens/login_screen/presentation/landing_page.dart';
import 'package:spotify_clone/screens/new_account/presentation/email_input.dart';
import 'package:spotify_clone/screens/new_account/presentation/gender_input.dart';
import 'package:spotify_clone/screens/new_account/presentation/password_input.dart';
import 'package:spotify_clone/screens/new_account/presentation/user_agreement.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LandingPage(),
      // home: EmailInput(),
      // home: PasswordInput(),
      // home : GenderInput(),
      home : UserAgreement(),
    );
  }
}
