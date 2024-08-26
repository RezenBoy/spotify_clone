import 'package:flutter/material.dart';
import 'package:spotify_clone/shared/create_account/common_appbar.dart';
import 'package:spotify_clone/shared/create_account/common_body.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Create Account"),
      backgroundColor: Colors.black,
      body: CommonBody(
          tittleText: "What's your email?",
          subTittleText: "You'll need to confirm this email later."),
    );
  }
}
