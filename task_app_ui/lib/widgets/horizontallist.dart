import 'dart:math';

import 'package:flutter/material.dart';

class Horizontallist extends StatefulWidget {
  const Horizontallist({super.key});

  @override
  State<Horizontallist> createState() => _HorizontallistState();
}

class _HorizontallistState extends State<Horizontallist> {
  List<Color?> colorlist = [
    Colors.blue[300],
    Colors.yellow[600],
    Colors.pink[300],
    Colors.deepPurple[400],
  ];

  List<String> textlist = [
    'Interview',
    'Review',
    'Testing',
    'Production',
    'Design'
  ];
  Color? getrandomcolor() {
    final random = Random();
    return colorlist[random.nextInt(colorlist.length)];
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.2, //150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Opacity(
                opacity: 0.7,
                child: Container(
                  margin: EdgeInsets.only(left: screenWidth * 0.03), //13
                  height: screenHeight * 0.15, //120,
                  width: screenWidth * 0.2, //85,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.08, //70,
                      ),
                      Text(
                        textlist[index],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: getrandomcolor(),
                      borderRadius: BorderRadius.circular(10)), //10
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
