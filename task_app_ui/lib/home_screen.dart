import 'package:flutter/material.dart';
import 'package:task_app_ui/widgets/blue_appbar.dart';

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
          children: [
            SizedBox(
              height: 1,
            ),
            // BlueAppbar(),
          ],
        ),
      ),
    );
  }
}
