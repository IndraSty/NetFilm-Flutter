import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/daftar_controller.dart';

class DaftarView extends GetView<DaftarController> {
  const DaftarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: size.width * 0.28,
                    height: size.height * 0.14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constant.boxForm,
                    ), 
                    child: Image.asset("assets/images/MyLogo2.png"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Silahkan Login dengan akun anda",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xff7A7A7A),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constant.boxForm,
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.email,
                          size: 24,
                          color: Colors.white,
                        ),
                        hintText: 'Nama',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.white,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constant.boxForm,
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.email,
                          size: 24,
                          color: Colors.white,
                        ),
                        hintText: 'Email',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.white,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constant.boxForm,
                  ),
                  child: Center(
                    child: Obx(
                      () => TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 24,
                            color: Colors.white,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () =>
                                controller.togglePasswordVisibility(),
                            icon: Icon(
                              controller.isPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            color: Colors.white,
                          ),
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        obscureText: !controller.isPasswordVisible.value,
                        cursorColor: Colors.white,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Konfirmasi Password",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constant.boxForm,
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 24,
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () =>
                              controller.togglePasswordVisibility(),
                          icon: Icon(
                            controller.isPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          color: Colors.white,
                        ),
                        hintText: 'Konfirmasi Password',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      obscureText: !controller.isPasswordVisible.value,
                      cursorColor: Colors.white,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    gradient: Constant.gradientPrimary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Masuk",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah punya akun? ",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Text(
                          "Masuk",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Constant.bodyColor1,
    );
  }
}
