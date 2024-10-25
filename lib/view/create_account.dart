import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/Firebase/firebase_auth_service.dart';
import 'package:tamang_food_app/main.dart';
import 'package:tamang_food_app/view/Buttons.dart';
import 'package:tamang_food_app/view/Home.dart';
import 'package:tamang_food_app/view/sign_in.dart';

import '../utils/Img.dart';
import '../utils/color.dart';
import 'Login_to_tamang_food.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtPwd = TextEditingController();
    TextEditingController txtUser = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Account",
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 15.sp),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
                style: GoogleFonts.poppins(
                    fontSize: 27.sp,
                    fontWeight: FontWeight.w300,
                    color: MainColor,
                    height: 1.1.sp),
              ),
              Text(
                "Enter your Name, Email and Password",
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: BodyColor),
              ),
              Row(
                children: [
                  Text(
                    "for sign up.",
                    style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: BodyColor),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Text(
                    "Already have account?",
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: ActiveColor),
                  ),
                ],
              ),
              SizedBox(
                height: 40.sp,
              ),
              Text(
                "FULL NAME",
                style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: BodyColor,
                    height: 0.001.sp),
              ),
              TextField(
                controller: txtUser,
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "EMAIL ADDRESS",
                style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: BodyColor,
                    height: 0.001.sp),
              ),
              TextField(
                controller: txtEmail,
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "PASSWORD",
                style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: BodyColor,
                    height: 0.001.sp),
              ),
              TextField(
                controller: txtPwd,
              ),
              SizedBox(
                height: 30.sp,
              ),
              Center(
                child: Get_Button(
                  "SIGN UP",
                  onTap: () async {
                    String status = await FirebaseAuthSevices
                        .firebaseAuthSevices
                        .createSimpleAccount(txtEmail.text, txtPwd.text);

                    if (status == 'Success') {
                      Get.to(() => HomeScreen());
                    }
                  },
                ),
              ),
              SizedBox(
                height: 22.sp,
              ),
              Center(
                child: Text(
                  "By Signing up you agree to our Terms",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, color: BodyColor),
                ),
              ),
              Center(
                child: Text(
                  "Conditions & Privacy Policy.",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, color: BodyColor),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: MainColor),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Center(
                  child: facebookButton(Color(0xff395998),
                      "CONNECT WITH FACEBOOK", facebookLogo)),
              SizedBox(
                height: 15.sp,
              ),
              Center(
                  child: facebookButton(
                      Color(0xff4285f4), "CONNECT WITH GOOGLE", googleLogo)),
            ],
          ),
        ),
      ),
    );
  }
}
