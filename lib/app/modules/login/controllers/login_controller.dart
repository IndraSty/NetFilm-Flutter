import 'package:get/get.dart';

class LoginController extends GetxController {
  var isPasswordVisible = true.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
