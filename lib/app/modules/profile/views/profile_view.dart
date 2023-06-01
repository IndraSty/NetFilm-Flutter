import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.primaryColor2,
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/profiles.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                gradient: Constant.gradientPrimary,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.transparent, width: 3)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                      "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/03/03/1996681581.jpg")),
            ),
            const SizedBox(
              height: 10,
            ),
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
            const SizedBox(
              height: 50,
            ),
            BoxItem(
              size: size,
              icon: Icons.money,
              text: 'Subscriptions',
            ),
            const SizedBox(
              height: 30,
            ),
            BoxItem(
              size: size,
              icon: Icons.list,
              text: 'My Lists',
            ),
            const SizedBox(
              height: 30,
            ),
            BoxItem(
              size: size,
              icon: Icons.download,
              text: 'My Downloads',
            ),
            const SizedBox(
              height: 30,
            ),
            BoxItem(
              size: size,
              icon: Icons.settings,
              text: 'Settings',
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: size.height * 0.07,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: Constant.gradientPrimary
                ),
                child: Center(
                  child: Text(
                    "Log Out",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BoxItem extends StatelessWidget {
  const BoxItem({
    super.key,
    required this.size,
    required this.text,
    required this.icon,
  });

  final Size size;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: size.height * 0.07,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Constant.boxForm),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
