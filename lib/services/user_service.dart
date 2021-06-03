import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:example_flutter1/models/user_model.dart';

class UserService {
  Future<UserModel> getUser() async {
    http.Response response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users/1"));
    return UserModel.fromJson(jsonDecode(response.body));
  }
}
