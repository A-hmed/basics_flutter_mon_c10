import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, "home");
            }, child: Text("Home")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "register");
            }, child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
