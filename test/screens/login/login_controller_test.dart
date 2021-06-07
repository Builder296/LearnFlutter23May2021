
import 'package:example_flutter1/enums/language.dart';
import 'package:example_flutter1/screens/login/login_controller.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('should be return flag th when call getImagePathLanguage with Language.th', () {
    var controller = LoginController();
    var actual = controller.getImagePathLanguage(Language.th);
    expect(actual, "assets/thai-flag.png");
  });
}