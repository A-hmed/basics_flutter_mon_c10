import 'package:flutter/material.dart';

class HomeMagazine extends StatelessWidget {
  Color purple = Color(0xff8025b4);
  String imagePath;
  String title;

  HomeMagazine({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(imagePath),
        Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
            color: purple.withOpacity(.5),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
      ],
    );
  }
}
