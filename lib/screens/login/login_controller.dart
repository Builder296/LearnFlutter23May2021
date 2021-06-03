import 'package:example_flutter1/models/user_model.dart';
import 'package:example_flutter1/services/user_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> onSubmit() async {
    try {
      UserModel user = await UserService().getUser(); // call service
      Get.toNamed('/home', arguments: {
        "name": user.name,
        "email": user.email,
      });
    } catch (error) {
      print("getUser: $error");
      // handle exception
    }
  }

}
