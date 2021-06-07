
import 'package:example_flutter1/enums/language.dart';
import 'package:example_flutter1/screens/login/login_controller.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('should be return flag th when call getImagePathLanguage with Language.th', () {
    var controller = LoginController();
    var actual = controller.getImagePathLanguage(Language.th);
    expect(actual, "assets/thai-flag.png");
  });

  test('should be return flag en when call getImagePathLanguage with Language.en', () {
    var controller = LoginController();
    var actual = controller.getImagePathLanguage(Language.en);
    expect(actual, "assets/eng-flag.png");
  });
}