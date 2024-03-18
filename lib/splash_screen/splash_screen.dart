import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/color.png",height: 380,width: 380,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize:Size(200, 45),backgroundColor: Color(0xff036274),),
              onPressed: () {
                Navigator.pushNamed(context, "home");
              }, child: Text("LOGIN",style: TextStyle(color: Color(0xffFFFBFE),fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
