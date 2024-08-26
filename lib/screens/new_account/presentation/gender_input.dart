import 'package:flutter/material.dart';
import 'package:spotify_clone/shared/create_account/common_appbar.dart';

class GenderInput extends StatelessWidget {
  const GenderInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Create account"),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Text(
            "What's your gender?",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
