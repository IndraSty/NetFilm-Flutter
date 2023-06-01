import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../../../../utils/page/my_download_screen.dart';
import '../../../../utils/page/my_list_screen.dart';
import '../controllers/whishlist_controller.dart';

class WhishlistView extends GetView<WhishlistController> {
  const WhishlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent, width: 1.5),
                      borderRadius: BorderRadius.circular(100),
                      gradient: Constant.gradientPrimary,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/03/03/1996681581.jpg",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Zyo Xenn",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Zyoxenn@gmail.com",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Constant.botIconColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: TabBar(
                        controller: controller.tabController,
                        unselectedLabelColor: const Color(0xff6D6D6D),
                        indicator: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 2,
                              color: Constant.primaryColor1,
                            ),
                          ),
                        ),
                        labelColor: Constant.primaryColor1,
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        tabs: const [
                          Tab(
                            text: 'My List',
                          ),
                          Tab(
                            text: 'My Download',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: const [
                    MyListView(),
                    MyDownloadView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Constant.bodyColor1,
    );
  }
}
