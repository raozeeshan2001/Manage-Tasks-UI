import 'dart:math';

import 'package:flutter/material.dart';

class PersonalTasks extends StatefulWidget {
  const PersonalTasks({super.key});

  @override
  State<PersonalTasks> createState() => _PersonalTasksState();
}

class _PersonalTasksState extends State<PersonalTasks> {
  List<Color?> colorlist = [
    Colors.blue[300],
    Colors.yellow[600],
    Colors.pink[300],
    Colors.deepPurple[400],
  ];
  List<String> textlist = [
    'Buy dinner ingredients',
    'Prepare insurance',
    'Call school director',
  ];
  Color? getrandomcolor() {
    final random = Random();
    return colorlist[random.nextInt(colorlist.length)];
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025), //10
        child: SizedBox(
          height: screenHeight * 0.25, //180,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: screenHeight * 0.01), //10
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.02), //8
                      child: CircleAvatar(
                        radius: screenWidth * 0.008,
                        backgroundColor: getrandomcolor(),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02 //8,
                        ),
                    Text(
                      textlist[index],
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[700],
                      size: 16,
                    ),
                    SizedBox(width: screenWidth * 0.02 // 5,
                        ),
                  ],
                ),
                height: screenHeight * 0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10)),
              );
            },
          ),
        ));
  }
}
