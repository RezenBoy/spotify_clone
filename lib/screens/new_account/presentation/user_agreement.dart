import 'package:flutter/material.dart';

import '../../../shared/app_text_style.dart';
import '../../../shared/create_account/common_appbar.dart';
import '../../../shared/create_account/common_button.dart';
import '../../../shared/create_account/common_text_field.dart';

class UserAgreement extends StatelessWidget {
  const UserAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
    return Scaffold(
      appBar: CommonAppBar(title: "Create Account"),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's your Name?",
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
              "This appears on your spotify profile.",
              style: getTextStyle(AppTextStyle.subheading1),
            ),
            SizedBox(
              height: 40,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'By tapping on "Create account". you agree to the spotify terms of Use. ',
              style: getTextStyle(AppTextStyle.subheading1),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Terms of Use',
              style:
                  getTextStyle(AppTextStyle.subheading1, color: Colors.green),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.',
              style: getTextStyle(
                AppTextStyle.subheading1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Privacy Policy',
              style:
                  getTextStyle(AppTextStyle.subheading1, color: Colors.green),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Please send me news and offers from Spotify.",
                  style: getTextStyle(AppTextStyle.subheading1),
                ),
                Checkbox(
                    value: isChecked,
                    activeColor: Colors.green,
                    onChanged: (bool? newValue) {
                      isChecked = newValue!;
                    })
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 8,
                  child: Text(
                    "Share my registration data with Spotify's content providers for marketing purposes.",
                    style: getTextStyle(AppTextStyle.subheading1),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Checkbox(
                      value: isChecked,
                      activeColor: Colors.green,
                      onChanged: (bool? newValue) {
                        isChecked = newValue!;
                      }),
                )
              ],
            ),
            Expanded(child: SizedBox()),
            CommonButton(
              buttonText: "Create an account",
              buttonColor: Colors.white,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
