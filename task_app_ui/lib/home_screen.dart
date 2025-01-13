import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_app_ui/widgets/blue_appbar.dart';
import 'package:task_app_ui/widgets/horizontallist.dart';
import 'package:task_app_ui/widgets/personal_tasks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BlueAppbar(),
        body: Column(
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
            Horizontallist(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Personal Tasks',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.indigo[400]),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PersonalTasks(),
          ],
        ),
      ),
    );
  }
}
