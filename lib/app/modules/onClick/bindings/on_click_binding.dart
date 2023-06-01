import 'package:get/get.dart';

import '../controllers/on_click_controller.dart';

class OnClickBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnClickController>(
      () => OnClickController(),
    );
  }
}
