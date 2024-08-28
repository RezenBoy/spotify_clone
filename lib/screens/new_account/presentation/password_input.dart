import 'package:flutter/material.dart';
import 'package:spotify_clone/shared/create_account/common_appbar.dart';

import '../../../shared/app_text_style.dart';
import '../../../shared/create_account/common_button.dart';
import '../../../shared/create_account/common_text_field.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

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
                "Create a password",
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
                "use atleast 8 characters.",
                style: getTextStyle(AppTextStyle.subheading1),
              ),
              SizedBox(
                height: 50,
              ),
              CommonButton(),
            ],
          ),
        ));
  }
}
