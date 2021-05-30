import 'package:get/get.dart';

class LoginController extends GetxController {
  String title = "แอพของฉัน";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 3)).then((value) {
      print("delay success");
      title = "12123";
      update();
    });
  }
}
