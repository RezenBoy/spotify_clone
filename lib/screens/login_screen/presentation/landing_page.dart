import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/shared/app_image.dart';
import 'package:spotify_clone/shared/app_login_button.dart';
import 'package:spotify_clone/shared/app_text_style.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black54,
              // Colors.black,
              Colors.black,
              Colors.black,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              SvgPicture.asset(
                getSvgImagePath(AppSvgImages.appleIcon),
                color: Colors.white,
                height: 70,
              ),
              SizedBox(
                height: 100,
              ),
              Text("Millions of Songs.\nFree on Spotify.",
                  style: getTextStyle(AppTextStyle.heading1),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 50,
              ),
              AppLoginButton(
                buttonName: "Sign up free",
                buttonColor: Colors.green,
                textColor: Colors.black,
                isBorder: true,
              ),
              AppLoginButton(
                  buttonName: "Continue with Google",
                  svgPath: getSvgImagePath(AppSvgImages.googleIcon)),
              AppLoginButton(
                  buttonName: "Continue with Facebook",
                  svgPath: getSvgImagePath(AppSvgImages.facebookIcon)),
              AppLoginButton(
                  buttonName: "Continue with Apple",
                  svgPath: getSvgImagePath(AppSvgImages.appleIcon)),
              SizedBox(
                height: 12,
              ),
              Text(
                "Log in",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
