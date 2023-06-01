import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../../../../utils/model/cast.dart';
import '../../../../utils/model/movie.dart';
import '../../../../utils/widget/carousel_slide_view.dart';
import '../../catalog/views/catalog_view.dart';
import '../controllers/on_click_controller.dart';

class OnClickView extends GetView<OnClickController> {
  OnClickView({Key? key}) : super(key: key);

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
          MovieItemList(
            size: size,
            imgUrl:
                'https://sgp1.digitaloceanspaces.com/acerid/AcerID.com/2023/03/Fakta-Game-The-Last-of-Us-yang-Diadaptasi-jadi-Serial-HBO.jpeg',
            title: 'The Last of Us',
            deskripsi:
                'Joel and Ellie, a pair connected through the harshness of the world they live in, are forced to endure brutal circumstances and ruthless killers on a trek across a post-outbreak America.',
            year: '2023',
            studio: 'HBO Max',
          ),
          Positioned(
            top: 50,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.5, color: Colors.white)),
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  Container(
                    height: 41,
                    width: 41,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.transparent, width: 2),
                        gradient: Constant.gradientPrimary),
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
            top: size.height * 0.68,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: size.width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Featured Cast",
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
                    Container(
                      width: size.width,
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              castItem(
                                imgUrl:
                                    'https://flxt.tmsimg.com/assets/494807_v9_bd.jpg',
                                character: 'Joel',
                                name: 'Pedro Pascal',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              castItem(
                                imgUrl:
                                    'https://people.com/thmb/HGNKjq-sOMsmp8fY-DYG3BqUPaY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(919x524:921x526)/bella-ramsey-1-e41e96a038c644e89efbe0a568817dec.jpg',
                                character: 'Ellie',
                                name: 'Bella Ramsey',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: const [
                              castItem(
                                imgUrl:
                                    'https://flxt.tmsimg.com/assets/170612_v9_bb.jpg',
                                character: 'Bill',
                                name: 'Nick Offerman',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              castItem(
                                imgUrl: 'https://media.glamour.com/photos/61f6ea808e5b27e30742efd4/master/w_2560%2Cc_limit/1352596455',
                                character: 'Kathleen',
                                name: 'Melanie Lynskey',
                              ),
                            ],
                          ),
                        ],
                      ),
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

class castItem extends StatelessWidget {
  const castItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.character,
  });

  final String imgUrl;
  final String name;
  final String character;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.white)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              character,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Constant.botIconColor,
              ),
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MovieItemList extends StatelessWidget {
  const MovieItemList({
    super.key,
    required this.size,
    required this.imgUrl,
    required this.title,
    required this.deskripsi,
    required this.year,
    required this.studio,
  });

  final Size size;
  final String imgUrl, title, deskripsi, year, studio;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.7,
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
                      Constant.bodyColor2.withOpacity(.95),
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
                    Container(
                      width: size.width * 0.8,
                      child: Text(
                        deskripsi,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * 0.4,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                      Row(
                        children: const [
                          Icon(
                            Icons.download_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.bookmark,
                            color: Constant.primaryColor1,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
