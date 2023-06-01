import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app/modules/home/views/home_view.dart';
import '../../app/modules/onClick/views/on_click_view.dart';
import '../../constant.dart';

class MyCarouselView extends StatefulWidget {
  const MyCarouselView({super.key});

  @override
  State<MyCarouselView> createState() => _MyCarouselViewState();
}

class _MyCarouselViewState extends State<MyCarouselView> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Widget> dataMovie = movieData
        .map(
          (item) => MovieItemList(
            size: size,
            imgUrl: item['image']!,
            studio: item['studio']!,
            year: item['year']!,
            subTitle: item['subTitle']!,
            title: item['title']!,
          ),
        )
        .toList();

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 0.87,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: dataMovie,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: movieData.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 28.0 : 12.0,
                height: 11.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: _current == entry.key ? BorderRadius.circular(50) : null,
                    shape: _current == entry.key ? BoxShape.rectangle : BoxShape.circle,
                    color: _current == entry.key ? Constant.primaryColor1 : const Color(0xffCCCCCC),
                        ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

final List<Map<String, String>> movieData = [
  {
    'image':
        'https://dafunda.com/wp-content/uploads/2022/03/1453464693-movies-avatar-still-02.jpg',
    'title': 'Avatar',
    'subTitle': 'The Way of Water',
    'studio': 'TSG Entertainment',
    'year': '2022',
  },
  {
    'image':
        'https://cdn.mos.cms.futurecdn.net/26Fni2jieRWyoSXPLZ3SxB.jpg',
    'title': 'Top Gun',
    'subTitle': 'Moverick',
    'studio': 'Paramount Pictures',
    'year': '2022',
  },
  {
    'image':
        'https://c.inilah.com/2022/05/0509_052233_760b_inilah.com_.jpg',
    'title': 'Doctor Strange',
    'subTitle': 'Multiverse of Madness',
    'studio': 'Marvel Studios',
    'year': '2022',
  },
  {
    'image':
        'https://cinemags.org/wp-content/uploads/2022/10/Black-Panther-Wakanda-Forever.jpg',
    'title': 'Black Panther',
    'subTitle': 'Wakanda Forever',
    'studio': 'Marvel Studios',
    'year': '2022',
  },
  {
    'image':
        'https://awsimages.detik.net.id/community/media/visual/2022/06/14/film-jurassic-world-dominion-1_43.jpeg?w=700&q=90',
    'title': 'Jurrasic World',
    'subTitle': 'Dominion',
    'studio': 'Universal Pictures',
    'year': '2022',
  },
  {
    'image':
        'https://static.hbo.com/2022-05/fantastic-beasts-secrets-of-dumbledore-ka-1920_0.jpg',
    'title': 'Fantastic Beast',
    'subTitle': 'The Secrets of Dumbledore',
    'studio': 'Warner Bros',
    'year': '2022',
  },
  
];


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

