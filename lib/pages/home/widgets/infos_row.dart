import 'package:criatividade/core/images_service.dart';
import 'package:criatividade/pages/home/widgets/container.dart';
import 'package:criatividade/pages/splashPage/splash_page.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class RowInfosPage extends StatefulWidget {
  @override
  _RowInfosPageState createState() => _RowInfosPageState();
}

class _RowInfosPageState extends State<RowInfosPage> {
  var borda = 15.0;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {},
          child: CaixaPreta(
              color: Colors.black,
              image: AppImages.uzuiGif,
              radius: borda,
              title: "Demon Slayer"),
        ),
        const SizedBox(
          width: 50,
        ),
        GestureDetector(
          onTap: () {},
          child: CaixaPreta(
              image: AppImages.naruto,
              radius: borda,
              title: "Naruto Shippuden",
              fontsize: 30.0),
        ),
        const SizedBox(
          width: 50,
        ),
        GestureDetector(
          onTap: () {},
          child: CaixaPreta(
              image: AppImages.midoriya,
              radius: borda,
              title: "Boku No Hero",
              fontsize: 25.0),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
