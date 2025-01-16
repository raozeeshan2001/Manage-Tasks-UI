// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class TaskAppbar extends StatelessWidget implements PreferredSizeWidget {
//   TaskAppbar({super.key});
//   //final MyCalendar myCalendar = MyCalendar();
//   final taskcalendar tc = taskcalendar();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: preferredSize.height,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.indigo[600],
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           children: [
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Container(
//                     height: 80,
//                     child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount:
//                           tc.dates.length, // Use the length of the dates list
//                       itemBuilder: (context, index) {
//                         final date =
//                             tc.dates[index]; // Access the specific date
//                         return Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                           child: Container(
//                             width: 70,
//                             decoration: BoxDecoration(
//                               color: Colors.blueAccent,
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   DateFormat.E().format(
//                                       date), // Day of the week (e.g., Mon)
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                                 SizedBox(height: 8),
//                                 Text(
//                                   DateFormat.d()
//                                       .format(date), // Day of the month
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(160);
// }

// class taskcalendar {
//   final DateTime today = DateTime.now();

//   List<DateTime> get dates =>
//       List.generate(30, (index) => today.add(Duration(days: index)));
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskAppbar extends StatelessWidget implements PreferredSizeWidget {
  TaskAppbar({super.key});
  final taskcalendar tc = taskcalendar();

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
          children: [
            SizedBox(height: 10),
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 240,
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tc.dates.length,
                      itemBuilder: (context, index) {
                        final date = tc.dates[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  DateFormat.E()
                                      .format(date), // Day of the week
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  DateFormat.d()
                                      .format(date), // Day of the month
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(160); // Appbar height
}

class taskcalendar {
  final DateTime today = DateTime.now();

  List<DateTime> get dates =>
      List.generate(30, (index) => today.add(Duration(days: index)));
}
