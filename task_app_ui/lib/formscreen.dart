import 'package:flutter/material.dart';
import 'package:task_app_ui/Model/user_model.dart';
import 'package:task_app_ui/Services/api_calling.dart';

class Formscreen extends StatefulWidget {
  const Formscreen({super.key});

  @override
  State<Formscreen> createState() => _FormscreenState();
}

class _FormscreenState extends State<Formscreen> {
  ApiCalling apiCalling = ApiCalling();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Form Screen'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: apiCalling.getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator()); // ✅ Show loading
                  }
                  if (snapshot.hasError) {
                    return Center(
                        child: Text(
                            "Error: ${snapshot.error}")); // ✅ Handle errors
                  }
                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(
                        child: Text(
                            "No data available")); // ✅ Handle empty response
                  }
                  List<UserModel> user = snapshot.data!;

                  return ListView.builder(
                      itemCount: 2, // user.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(user[index].title.toString()),
                        );
                      });
                }),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}
