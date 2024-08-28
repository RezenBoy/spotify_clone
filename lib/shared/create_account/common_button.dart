import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  Color textColor;
  CommonButton({super.key,this.buttonText = "Next",this.buttonColor = Colors.grey,this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )),
    );
  }
}
