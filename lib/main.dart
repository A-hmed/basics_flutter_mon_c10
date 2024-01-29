import 'package:flutter/material.dart';
import 'package:mon_basics_flutter_c10/screens/calculator/calculator.dart';
import 'package:mon_basics_flutter_c10/screens/game_board/game_board.dart';
import 'package:mon_basics_flutter_c10/screens/game_board/on_boarding.dart';
import 'package:mon_basics_flutter_c10/screens/home/home.dart';
import 'package:mon_basics_flutter_c10/screens/login/login.dart';
import 'package:mon_basics_flutter_c10/screens/register/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "home": (context){
          return HomeScreen();
        },
        "login": (context) => LoginScreen(),
        "register": (_) => RegisterScreen(),
        CalculatorScreen.routeName : (_) => CalculatorScreen(),
        GameBoard.routeName: (_) => GameBoard(),
        OnBoarding.routeName: (_) => OnBoarding()
      },
      initialRoute:  OnBoarding.routeName,
    );
  }
}
