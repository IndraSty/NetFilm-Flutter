import 'package:get/get.dart';

import '../controllers/bot_nav_bar_controller.dart';

class BotNavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BotNavBarController>(
      () => BotNavBarController(),
    );
  }
}
