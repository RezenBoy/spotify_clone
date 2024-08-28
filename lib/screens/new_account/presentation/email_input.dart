import 'package:flutter/material.dart';
import 'package:spotify_clone/shared/create_account/common_appbar.dart';
import 'package:spotify_clone/shared/create_account/common_button.dart';
import 'package:spotify_clone/shared/create_account/common_text_field.dart';

import '../../../shared/app_text_style.dart';

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
              style: getTextStyle(AppTextStyle.heading2),
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
              style: getTextStyle(AppTextStyle.subheading1),
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
