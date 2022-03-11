import 'package:criatividade/core/images_service.dart';
import 'package:flutter/material.dart';

class BackGround extends StatefulWidget {
  @override
  _BackGroundState createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                AppImages.cityGif,
                alignment: Alignment.centerLeft,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(color: (Colors.black).withOpacity(0.5)),
            ),
          ],
        ));
  }
}
