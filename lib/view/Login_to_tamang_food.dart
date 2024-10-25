import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tamang_food_app/utils/color.dart';
import 'package:tamang_food_app/view/Buttons.dart';

import 'Login to Foodly.dart';

class LoginToTamangFood extends StatelessWidget {
  const LoginToTamangFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login to Tamang Food",
          style:
          GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 15.sp),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 17.sp),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Center(
                child: Text("Get started with Foodly",style: GoogleFonts.poppins(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w500

                ),),
              ),
              Center(
                child: Text("Enter your phone number to use foodly and",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                    color: BodyColor
                ),),
              ),
              Center(
                child: Text("enjoy your food :)",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                  color: BodyColor
                ),),
              ),
              SizedBox(height: 30.sp,),
              Text("PHONE NUMBER",style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: BodyColor,
                  height: 0.001.sp
              ),),
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',


                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {

                },
              ),
              SizedBox(
                height: 30.sp,
              ),
              Center(

                  child: GestureDetector(
                      onTap: () {
                        Get.to(LogintoFoodly());

                      },
                      child: Get_Button("SIGN UP")))
            ],
          ),
        ),
      ),
    );
  }
}
