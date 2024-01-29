import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, "home");
            }, child: Text("Home")),
            ElevatedButton(onPressed: (){
               Navigator.pop(context);
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
