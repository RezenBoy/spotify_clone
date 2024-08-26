import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
          ),
          child: Text(
            "Next",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )),
    );
  }
}
