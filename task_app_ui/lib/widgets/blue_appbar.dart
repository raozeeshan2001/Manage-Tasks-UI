import 'package:flutter/material.dart';

class BlueAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BlueAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.indigo[600],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.shutterstock.com/shutterstock/photos/2264922221/display_1500/stock-vector-vector-flat-illustration-in-grayscale-avatar-user-profile-person-icon-gender-neutral-silhouette-2264922221.jpg'),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Hello, ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blue[200])),
                Text('Rao Zeeshan!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white)),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'You have ',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '4 tasks ',
                  style: TextStyle(color: Colors.blue[200]),
                ),
                Text(
                  'today ',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(160);
}
