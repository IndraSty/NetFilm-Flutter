import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../constant.dart';
import '../model/movie.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.bodyColor1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://www.stellarsisters.com/wp-content/uploads/2021/12/my-name-netflix-imgune.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 215,
                      height: 47,
                      decoration: BoxDecoration(
                        border: const GradientBoxBorder(
                            gradient: Constant.gradientPrimary, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return Constant.gradientPrimary.createShader(bounds);
                      },
                      child: Text(
                        "Continue Wacthing",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            GridV(),
          ],
        ),
      ),
    );
  }
}

class GridV extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: 'Black Phanter',
      imgUrl:
          'https://cinemags.org/wp-content/uploads/2022/10/Black-Panther-Wakanda-Forever.jpg',
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
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: movies.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 30,
        mainAxisExtent: 165,
      ),
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    movies[index].imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
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
        );
      },
    );
  }
}
