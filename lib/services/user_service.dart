import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:example_flutter1/models/user_model.dart';
import 'package:example_flutter1/models/user_model2.dart';

class UserService {
  Future<UserModel> getUser() async {
    return await Future.delayed(Duration(milliseconds: 500), () {
      return UserModel(
        fname: "บุญส่ง",
        lname: "สีทอง",
      );
    });
  }

  Future<UserModel2> getUser2() async {
    http.Response response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users/1"));
    return UserModel2.fromJson(jsonDecode(response.body));
  }
}
