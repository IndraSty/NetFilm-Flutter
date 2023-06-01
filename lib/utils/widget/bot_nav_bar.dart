import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../../app/modules/catalog/views/catalog_view.dart';
import '../../app/modules/home/views/home_view.dart';
import '../../app/modules/profile/views/profile_view.dart';
import '../../app/modules/whishlist/controllers/whishlist_controller.dart';
import '../../app/modules/whishlist/views/whishlist_view.dart';
import '../../constant.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    Get.put(WhishlistController());
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Constant.botNavColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const <Widget> [
            HomeView(),
            CatalogView(),
            WhishlistView(),
            ProfileView()
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          bottomPadding: 16,
          backgroundColor: Constant.botNavColor,
          waterDropColor: Constant.primaryColor1,
          inactiveIconColor: Constant.botIconColor,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.home_rounded,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
              filledIcon: Icons.search_rounded,
              outlinedIcon: Icons.search_outlined,
            ),
            BarItem(
              filledIcon: Icons.bookmark_rounded,
              outlinedIcon: Icons.bookmark_border_rounded,
            ),
            BarItem(
              filledIcon: Icons.person_rounded,
              outlinedIcon: Icons.person_outline,
            ),
          ],
        ),
      ),
    );
  }
}
