import 'package:example_flutter1/screens/home.dart';
import 'package:example_flutter1/screens/login/login.dart';
import 'package:example_flutter1/screens/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.prompt().fontFamily,
      ),
      // home: LoginScreen(),
      initialRoute: '/login',
      getPages: [
        GetPage(
            name: "/login",
            page: () => LoginScreen(),
            binding: LoginBinding(), // use binding
        ),
        GetPage(
          name: "/home",
          page: () => HomeScreen(),
        )
      ],
    );
  }
}

class LoginBinding extends Bindings { // create binding class
  @override
  void dependencies() {
    print("put logincontroller");
    Get.put(LoginController());
  }
}
