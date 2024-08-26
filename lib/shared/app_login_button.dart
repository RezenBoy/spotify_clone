import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLoginButton extends StatelessWidget {
  final String buttonName;
  Color buttonColor;
  Color textColor;
  bool isBorder;
  String svgName;

  AppLoginButton(
      {super.key,
      required this.buttonName,
      this.buttonColor = Colors.black,
      this.textColor = Colors.white,
      this.isBorder = false,
      required this.svgName});

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
          SvgPicture.asset("assets/svg/$svgName", height: 22),
          Text(
            buttonName,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w900, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
