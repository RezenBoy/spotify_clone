import 'package:flutter/material.dart';
import 'package:spotify_clone/shared/create_account/common_appbar.dart';

import '../../../shared/create_account/common_body.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Create Account"),
      backgroundColor: Colors.black,
      body: CommonBody(
          tittleText: "Create a password",
          subTittleText: "use atleast 8 characters."),
    );
  }
}
