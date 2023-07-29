import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../../../../utils/widget/carousel_slide_view.dart';
import '../../catalog/views/catalog_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.bodyColor1,
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: Constant.bodyColor2,
          ),
          const MyCarouselView(),
          Positioned(
            top: 50,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                    height: 41,
                    width: 41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: Constant.gradientPrimary,
                      border: Border.all(color: Colors.transparent, width: 2),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                            "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/03/03/1996681581.jpg")),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Trending Movie",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "See More",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Constant.primaryColor1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 170,
                      width: size.width,
                      child: LvItemMovie(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MovieItemList extends StatelessWidget {
  const MovieItemList({
    super.key,
    required this.size,
    required this.imgUrl,
    required this.title,
    required this.subTitle,
    required this.year,
    required this.studio,
  });

  final Size size;
  final String imgUrl, title, subTitle, year, studio;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.6,
          width: size.width,
          child: Hero(
            tag: 'Movie',
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Constant.bodyColor2,
                      Constant.bodyColor2.withOpacity(.8),
                      Constant.bodyColor2.withOpacity(.1),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 290,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        year,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor1,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        studio,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor1,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subTitle,
                      style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                      size: 15,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                      size: 15,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                      size: 15,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                      size: 15,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "From 342 Users",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: const Color(0xffA4A4A4),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
