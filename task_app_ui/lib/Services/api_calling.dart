import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_app_ui/Model/user_model.dart';

class ApiCalling {
  List<UserModel> userList = [];
  Future<List<UserModel>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body); // Decode JSON list
      // Create a new list for users
      List<UserModel> userList =
          data.map<UserModel>((item) => UserModel.fromJson(item)).toList();

      // for (var item in data) {
      //   // Loop through each item
      //   userList.add(UserModel.fromJson(item));
      // }

      return userList; // Return the list of UserModel objects
    } else {
      throw Exception('Failed to fetch data'); // Correct way to handle errors
    }
  }
}
