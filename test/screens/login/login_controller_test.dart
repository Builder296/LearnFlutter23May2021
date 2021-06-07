
import 'package:example_flutter1/enums/language.dart';
import 'package:example_flutter1/screens/login/login_controller.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group("getImagePathLanguage", () {
    var controller = LoginController();
    test('should be return flag th when call getImagePathLanguage with Language.th', () {
      var actual = controller.getImagePathLanguage(Language.th);
      expect(actual, "assets/thai-flag.png");
    });

    test('should be return flag en when call getImagePathLanguage with Language.en', () {
      var actual = controller.getImagePathLanguage(Language.en);
      expect(actual, "assets/eng-flag.png");
    });
  });

  group("setLanguageSelected", () {
    var controller = LoginController();
    test("should be equal th when call setLanguageSelected with th", () {
      controller.setLanguageSelected(Language.th);
      expect(controller.languageSelected.value, Language.th);
    });

    test("should be equal th when call setLanguageSelected with en", () {
      controller.setLanguageSelected(Language.en);
      expect(controller.languageSelected.value, Language.en);
    });
  });
}