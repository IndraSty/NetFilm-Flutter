import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../../../../utils/model/movie.dart';
import '../controllers/catalog_controller.dart';

class CatalogView extends GetView<CatalogController> {
  const CatalogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.bodyColor1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Constant.boxForm,
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "What do you want to see?",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xff959595),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xff959595),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      CategContain(
                        text: 'Fantasy',
                      ),
                      CategContain(
                        text: 'Romance',
                      ),
                      CategContain(
                        text: 'Science Fiction',
                      ),
                      CategContain(
                        text: 'Thriller',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Movie",
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 170,
                  width: size.width,
                  child: LvItemMovie(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 170,
                  width: size.width,
                  child: LvItemMovie(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coming Soon",
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 170,
                  width: size.width,
                  child: LvItemMovie(),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategContain extends StatelessWidget {
  const CategContain({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Constant.boxForm,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LvItemMovie extends StatelessWidget {
  LvItemMovie({
    super.key,
  });

  final List<Movie> movies = [
    Movie(
      title: 'Black Phanter',
      imgUrl:
          'https://assets.jatimnetwork.com/crop/1x72:749x598/750x500/webp/photo/2022/11/03/448960914.jpg',
    ),
    Movie(
      title: 'Top Gun',
      imgUrl: 'https://cdn.antaranews.com/cache/800x533/2022/08/22/topgun.jpg',
    ),
    Movie(
      title: 'Doctor Stran..',
      imgUrl:
          'https://www.fandimefilmu.cz/files/images/2022/02/14/article_main_0dw5g9c31q4qep7c.jpg',
    ),
    Movie(
      title: 'House Of Th..',
      imgUrl: 'https://static.hbo.com/2022-06/house-of-the-dragon-ka-1920.jpg',
    ),
    Movie(
      title: 'All of Us Ar..',
      imgUrl:
          'https://media.suara.com/pictures/653x366/2022/06/07/51304-all-of-us-are-dead.jpg',
    ),
    Movie(
      title: 'Our Belove..',
      imgUrl:
          'https://awsimages.detik.net.id/community/media/visual/2021/11/25/our-beloved-summer-4_34.jpeg?w=375',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 116,
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: double.infinity,
                    height: 135,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        movies[index].imgUrl,
                        height: 200,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    movies[index].title,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
