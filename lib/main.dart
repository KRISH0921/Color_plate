import 'package:color_plate/home_screen/home_screen.dart';
import 'package:color_plate/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) => SplashScreen(),
        "home":(context) => HomeScreen(),
      },
    );
  }
}

