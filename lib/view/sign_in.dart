import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/Firebase/firebase_auth_service.dart';
import 'package:tamang_food_app/utils/Img.dart';
import 'package:tamang_food_app/utils/color.dart';
import 'package:tamang_food_app/view/create_account.dart';

import 'Buttons.dart';
import 'Forgot_Password.dart';
import 'Home.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtPwd = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style:
          GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 15.sp),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.sp),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to Tamang\nFood Services",
                style: GoogleFonts.poppins(
                    fontSize: 27.sp,
                    fontWeight: FontWeight.w300,
                    color: MainColor,
                    height: 1.1.sp),
              ),
              SizedBox(
                height: 6.sp,
              ),
              Text(
                "Enter your Phone number or Email \naddress for sign in. Enjoy your food :)",
                style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: BodyColor),
              ),
              SizedBox(
                height: 40.sp,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(ForgotPassword());
                    },
                    child: Text(
                      "Forget Password ?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: BodyColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              Get_Button(
                "SIGN IN",
                onTap: () async {
                  String status =await FirebaseAuthSevices.firebaseAuthSevices.simpleLoginAccount(
                      txtEmail.text, txtPwd.text);
                  if (status == 'Success') {
                    Get.to(() => HomeScreen());
                  }
                },
              ),
              SizedBox(
                height: 9.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: MainColor),
                  ),
                  SizedBox(
                    width: 15.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(CreateAccount());
                    },
                    child: Text(
                      "Create new account",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: ActiveColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.sp,
              ),
              Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: MainColor),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Center(
                  child: facebookButton(Color(0xff395998),
                      "CONNECT WITH FACEBOOK", facebookLogo)),
              SizedBox(
                height: 15.sp,
              ),
              GestureDetector(
                  onTap: () {
                    FirebaseAuthSevices.firebaseAuthSevices
                        .createGoogleAccount();
                  },
                  child: Center(
                      child: facebookButton(Color(0xff4285f4),
                          "CONNECT WITH GOOGLE", googleLogo))),
            ],
          ),
        ),
      ),
    );
  }
}
