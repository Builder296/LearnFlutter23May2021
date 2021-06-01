import 'package:get/get.dart';

class LoginController extends GetxController {
  String title1 = "get builder title 1";
  String title4 = "get builder title 4";
  var title2 = RxString("get x title 2");
  var title3 = RxString('obx title 3');

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3)).then((value) {
      print("delay success");
      title1 = "get builder";
      title2.value = "get x";
      title3.value = "obx";
      update();
    });
  }
}
