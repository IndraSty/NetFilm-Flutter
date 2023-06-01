import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/widget/bot_nav_bar.dart';
import '../controllers/bot_nav_bar_controller.dart';

class BotNavBarView extends GetView<BotNavBarController> {
  const BotNavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: BottomNavBar(),
    );
  }
}
