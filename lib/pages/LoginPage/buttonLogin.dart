import 'package:flutter/material.dart';
import '../splashPage/splash_page.dart';

class EnterButton extends ElevatedButton {
  EnterButton({
    Key? key,
    page = Widget,
    required BuildContext context,
    required String title,
    required,
  }) : super(
          key: key,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              primary: Color(0x00FFFFFF),
              textStyle: TextStyle(
                fontSize: 20.0,
              ),
              shadowColor: Colors.transparent),
          autofocus: false,
          child: Ink(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(0),
                constraints: const BoxConstraints(minWidth: 88.0),
                child: Text(title, textAlign: TextAlign.center),
              ),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 136, 25, 191),
                  Color.fromARGB(255, 33, 129, 247)
                ]),
              )),
          clipBehavior: Clip.none,
        );
}
