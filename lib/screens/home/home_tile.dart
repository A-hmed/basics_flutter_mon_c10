import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  Color purple = Color(0xff8025b4);
  TextStyle titleStyle = TextStyle(color: Colors.white, fontSize: 24);
  String title;
  HomeTile(this.title);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        color: purple,
        child: Text(title,
            textAlign: TextAlign.center, style: titleStyle),
      ),
    );
  }
}
