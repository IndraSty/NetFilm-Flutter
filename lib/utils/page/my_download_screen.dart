import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class MyDownloadView extends StatelessWidget {
  const MyDownloadView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.bodyColor1,
      body: Column(
        children: [
          Container(
                width: size.width,
                height: size.height * 0.23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://www.stellarsisters.com/wp-content/uploads/2021/12/my-name-netflix-imgune.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 215,
                          height: 47,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                style: BorderStyle.solid,
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              gradient: Constant.gradientPrimary),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                "https://www.stellarsisters.com/wp-content/uploads/2021/12/my-name-netflix-imgune.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return Constant.gradientPrimary.createShader(bounds);
                          },
                          child:Text(
                          "Continue Download",
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
              ),
        ],
      ),
    );
  }
}