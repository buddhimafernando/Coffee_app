import "package:coffee_app/components/my_button.dart";
import "package:flutter/material.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splashscreen_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Text(
                "Grab your coffee",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 440,),
            MyButton(
              onTap: () {
                Navigator.pushNamed(context, "/home_page");
              }, 
              child: Text(
                "Get Started",
              ),
            ),

          ],
        ),
        // child: Padding(
        //   padding: const EdgeInsets.only(top: 180),
        //   child: Text(
        //     "Grab your coffee",
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       fontSize: 40,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
