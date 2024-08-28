import 'package:flutter/material.dart';
import 'package:spotify_clone/shared/app_text_style.dart';
import 'package:spotify_clone/shared/create_account/common_appbar.dart';

import '../../../shared/create_account/common_button.dart';

class GenderInput extends StatelessWidget {
  const GenderInput({super.key});

  @override
  Widget build(BuildContext context) {
    var gender = {'Male', 'Female', 'other'};
    return Scaffold(
      appBar: CommonAppBar(title: "Create account"),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("What's your gender?",
                style: getTextStyle(AppTextStyle.heading2)),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey,),
              child: DropdownButton(
                  items: gender.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  style: getTextStyle(AppTextStyle.primaryText),
                  dropdownColor: Colors.grey,
                  isExpanded: true,
                  underline: SizedBox(),
                  onChanged: (String? newValue) {}),
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
