import 'package:flutter/material.dart';

import 'components/row_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 12, 12),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 12, 12, 12),
          automaticallyImplyLeading: false,
          title: Text("ANIMES APP"),
        ),
        body: Stack(
          children: [
            Container(
              height: 400,
              child: MenuCar(),
            ),
          ],
        ));
  }
}
