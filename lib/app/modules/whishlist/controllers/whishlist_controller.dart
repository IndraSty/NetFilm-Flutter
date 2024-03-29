import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhishlistController extends GetxController with SingleGetTickerProviderMixin{
  late TabController tabController;
  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
