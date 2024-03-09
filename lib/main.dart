import 'package:coffee_app/pages/home_page.dart';
import 'package:coffee_app/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomePage(),
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange,
        ),
        routes: {
          '/splash_screen': (context) => const SplashScreen(),
          '/home_page': (context) => const HomePage(),
        }
    );
  }
}
