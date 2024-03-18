import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data = [
    Color(0xffCD6155),
    Color(0xffDE3163),
    Color(0xff6495ED),
    Color(0xffEC7063),
    Color(0xffAF7AC5),
    Color(0xff9FE2BF),
    Color(0xff884EA0),
    Color(0xff3366FF),
    Color(0xff5499C7),
    Color(0xff00CC66),
    Color(0xff21618C),
    Color(0xff66FFFF),
    Color(0xff48C9B0),
    Color(0xffFF3366),
    Color(0xff1E8449),
    Color(0xff3366FF),
    Color(0xff52BE80),
    Color(0xffCCCCFF),
    Color(0xffA04000),
    Color(0xffCCFF33),
  ];
  int select = 0;
  int select1 = 0;
  int select2 = 0;
  int select3 = 0;
  int select4 = 0;
  int select5 = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        centerTitle: true,
        title: Text(
          "Dice App",
          style: TextStyle(color: Color(0xffFFFBFE)),
        ),
        backgroundColor: Color(0xff036274),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined,color: Color(0xffFFFBFE),),
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.restart_alt,color: Color(0xffFFFBFE),),
            onPressed: () {
              setState(() {
                select = 00;
                select1 = 00;
                select2 = 00;
                select3 = 00;
                select4 = 00;
                select5 = 00;


              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 200,
              color: data[select],
            ),
            Container(
              height: 70,
              width: 200,
              color: data[select1],
            ),
            Container(
              height: 70,
              width: 200,
              color: data[select2],
            ),
            Container(
              height: 70,
              width: 200,
              color: data[select3],
            ),
            Container(
              height: 70,
              width: 200,
              color: data[select4],
            ),
            Container(
              height: 70,
              width: 200,
              color: data[select5],
            ),
            SizedBox(height: 20,),
            GestureDetector(
              child: Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xff036274),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Roll",
                    style: TextStyle(color: Color(0xffFFFBFE), fontSize: 20),
                  ),
                ),
              ),
              onTap: () {
                Random r1 = Random();
                setState(
                      () {
                    select = r1.nextInt(20);
                    select1 = r1.nextInt(20);
                    while(select == select1){
                      select1 = r1.nextInt(20);
                    }
                    select2 = r1.nextInt(20);
                    while(select1 == select2 || select == select2){
                      select2 = r1.nextInt(20);
                    }
                    select3 = r1.nextInt(20);
                    while(select1 == select3 || select == select3 || select2 == select3){
                      select3 = r1.nextInt(20);
                    }
                    select4 = r1.nextInt(20);
                    while(select1 == select4 || select == select4 || select2 == select4 || select3 == select4){
                      select4 = r1.nextInt(20);
                    }
                    select5 = r1.nextInt(20);
                    while(select1 == select5 || select == select5 || select2 == select5 || select3 == select5 || select4 == select5){
                      select5 = r1.nextInt(20);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

