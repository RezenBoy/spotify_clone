import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/shared/app_text_style.dart';

class AppLoginButton extends StatelessWidget {
  final String buttonName;
  Color buttonColor;
  Color textColor;
  bool isBorder;
  String svgPath;

  AppLoginButton(
      {super.key,
      required this.buttonName,
      this.buttonColor = Colors.black,
      this.textColor = Colors.white,
      this.isBorder = false,
      this.svgPath = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: buttonColor,
          border: isBorder
              ? const Border()
              : Border.all(width: 0.8, color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              child: svgPath == ""
                  ? SizedBox()
                  : SvgPicture.asset(svgPath, height: 22)),
          Text(
            buttonName,
            style: getTextStyle(AppTextStyle.primaryText,color: textColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
