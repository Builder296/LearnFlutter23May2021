import 'package:get/get.dart';

class LoginController extends GetxController {
  String title1 = "get builder title";
  var title2 = RxString('"get x title"');
  var title3 = RxString('"obx title"');

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 3)).then((value) {
      print("delay success");
      title1 = "get builder";
      title2.value = "get x";
      update();
    });
  }
}
