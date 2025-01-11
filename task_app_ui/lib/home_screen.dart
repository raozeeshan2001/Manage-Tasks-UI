import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_app_ui/widgets/blue_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color?> colorlist = [
    Colors.blue[300],
    Colors.yellow[600],
    Colors.pink[300],
    Colors.deepPurple[400],
  ];
  Color? getrandomcolor() {
    final random = Random();
    return colorlist[random.nextInt(colorlist.length)];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BlueAppbar(),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Projects',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.indigo[400]),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          height: 120,
                          width: 85,
                          decoration: BoxDecoration(
                              color: getrandomcolor(),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
