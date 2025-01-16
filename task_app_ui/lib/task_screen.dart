import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting dates

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tasks',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.indigo[400]),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.vectorstock.com/i/1000v/44/96/check-tick-mark-on-wavy-edge-green-circle-sticker-vector-47744496.jpg'),
                      ),
                      title: Text('scehdule meeting'),
                      subtitle: Text('8:00-9:00'),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
