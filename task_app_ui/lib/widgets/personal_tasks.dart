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
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: 180,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: getrandomcolor(),
                      ),
                    ),
                    SizedBox(
                      width: 8,
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
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                height: 50,
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
