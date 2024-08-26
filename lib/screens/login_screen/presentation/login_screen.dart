import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/shared/app_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                "assets/svg/spotify_icon.svg",
                color: Colors.white,
                height: 70,
              ),
              SizedBox(
                height: 100,
              ),
              Text("Millions of Songs.\nFree on Spotify.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 35,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 50,
              ),
              AppLoginButton(
                  buttonName: "Sign up free",
                  buttonColor: Colors.green,
                  textColor: Colors.black,
                  isBorder: true,
                  svgName: ""),
              AppLoginButton(
                  buttonName: "Continue with Google",
                  svgName: "google_icon.svg"),
              AppLoginButton(
                  buttonName: "Continue with Facebook",
                  svgName: "facebook_icon.svg"),
              AppLoginButton(
                  buttonName: "Continue with Apple", svgName: "apple_icon.svg"),
              SizedBox(height: 12 ,),
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
