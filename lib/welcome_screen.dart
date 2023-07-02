import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color:Colors.white,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          );
  }
}