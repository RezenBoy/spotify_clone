import 'package:flutter/material.dart';
import 'package:spotify_clone/shared/create_account/common_appbar.dart';
import 'package:spotify_clone/shared/create_account/common_button.dart';
import 'package:spotify_clone/shared/create_account/common_text_field.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Create Account"),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's your email?",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            CommonTextField(),
            SizedBox(
              height: 10,
            ),
            Text(
              "You'll need to confirm this email later.",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(
              height: 50,
            ),
            CommonButton(),
          ],
        ),
      ),
    );
  }
}
