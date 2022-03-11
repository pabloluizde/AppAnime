import 'package:criatividade/core/images_service.dart';
import 'package:flutter/material.dart';

import '../LoginPage/loginPage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage())));
    imageCache!.clear();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          alignment: Alignment.center,
          child: SizedBox(
            width: 400,
            height: 400,
            child: Image.asset(AppImages.felixGif),
          )),
    );
  }
}
