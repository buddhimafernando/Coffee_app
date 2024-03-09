import "package:coffee_app/components/my_button.dart";
import "package:flutter/material.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splashscreen_bg.png"),
            fit: BoxFit.fitHeight,
          ),
        ),

      ),
      
    );
  }
}