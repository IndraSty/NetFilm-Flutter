import 'package:get/get.dart';

class DaftarController extends GetxController {
  var isPasswordVisible = true.obs;

  void togglePasswordVisibility(){
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
