import 'package:flutter/material.dart';
import 'package:mon_basics_flutter_c10/screens/home/home_magazine.dart';
import 'package:mon_basics_flutter_c10/screens/home/home_tile.dart';
import 'package:mon_basics_flutter_c10/screens/home/magazine_dm.dart';

class HomeScreen extends StatelessWidget{
  Color purple = Color(0xff8025b4);
  TextStyle titleStyle = TextStyle(color: Colors.white, fontSize: 24);

  List<MagazineDM> magazines = [
    MagazineDM(imagePath: "assets/sports.jpg",
        title: "sports"),
    MagazineDM(imagePath: "assets/sports.jpg",
        title: "test"),
    MagazineDM(imagePath: "assets/sports.jpg",
        title: "magazine test"),
    MagazineDM(imagePath: "assets/sports.jpg",
        title: "magazine test"),
    MagazineDM(imagePath: "assets/sports.jpg",
        title: "magazine test"),
    MagazineDM(imagePath: "assets/sports.jpg",
        title: "magazine test"),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              HomeTile("Magazine"),
              SizedBox(
                width: 8,
              ),
              HomeTile("News")
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: magazines.length,
              itemBuilder: (context, index) => HomeMagazine(
                    title: magazines[index].title,
                    imagePath: magazines[index].imagePath),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,

              ),
            ),
          )
        ],
      ),
    );
  }
  Widget myItemBuilder (context, index) => Text("1");
}