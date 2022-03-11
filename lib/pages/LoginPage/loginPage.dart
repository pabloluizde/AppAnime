import 'package:criatividade/core/images_service.dart';
import 'package:criatividade/pages/LoginPage/buttonLogin.dart';
import 'package:criatividade/pages/LoginPage/text_input.dart';
import 'package:flutter/material.dart';

import 'background_login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var email = TextEditingController();
    var senha = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(alignment: Alignment.center, children: [
        SizedBox(child: BackGround()),
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 100, width: 300, child: Image.asset(AppImages.logo)),
              const SizedBox(height: 20),
              SizedBox(width: 300, child: LoginInput(email)),
              const SizedBox(height: 20),
              SizedBox(width: 300, child: SenhaInput(senha)),
              const SizedBox(height: 20),
              SizedBox(
                  height: 50,
                  width: 150,
                  child: EnterButton(context: context, title: "Enter")),
            ]),
      ]),
    );
  }
}
