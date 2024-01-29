import 'package:flutter/material.dart';
import 'package:mon_basics_flutter_c10/screens/game_board/game_board.dart';

class OnBoarding extends StatelessWidget {
  static String routeName = "on boarding";

  OnBoarding({super.key});

  String player1 = "";
  String player2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("OnBoarding"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              onChanged: (text) {
                player1 = text;
              },
              decoration: const InputDecoration(
                  hintText: "Write player 1 name"
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              decoration: const InputDecoration(
                  labelText: "player2"
              ),
              onChanged: (text) {
                player2 = text;
              },
            ),
          ),
          const Spacer(),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, GameBoard.routeName,
                    arguments: GameBoardArgs(player1, player2));
              }, child: const Text("Start"))),
          const Spacer(),
        ],
      ),
    );
  }
}
class GameBoardArgs{
  String player1;
  String player2;
  GameBoardArgs(this.player1, this.player2);
}
