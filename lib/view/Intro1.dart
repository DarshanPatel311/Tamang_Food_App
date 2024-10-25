import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/utils/color.dart';
import 'package:tamang_food_app/view/Intro2.dart';

import '../utils/Img.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColor,
      body: Column(

        children: [

          Stack(
            children: [
              Container(
                  height: 360.sp,
                  width: 320.sp,
                  // color: Colors.grey,
                  child: Image.asset('assets/img/Circle Background.png',fit: BoxFit.contain,)),

              Padding(
                padding: EdgeInsets.only(left: 20.sp, top: 100.sp),
                child: Row(
                  children: [
                    Image.asset(logo),
                    SizedBox(
                      width: 8.sp,
                    ),
                    Column(
                      children: [
                        Text("Tamang",style: GoogleFonts.poppins(
                            fontSize: 35.sp,
                            fontWeight: FontWeight.bold,
                            height: 0.9.sp
                        ),),
                        Text(
                          "FoodService ",
                          style: GoogleFonts.poppins(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold,
                              height: 1.2.sp
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 210.sp, left: 90.sp),
                child: Container(
                    height: 250.sp,


                    child: Image.asset(intro1,fit: BoxFit.cover,)),
              ),
            ],
          ),
          SizedBox(
            height: 40.sp,
          ),
          Text(
            "Welcome",
            style: GoogleFonts.poppins(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: MainColor
            )
          ),
          SizedBox(height: 5.sp,),
          Padding(
            padding: const EdgeInsets.only(left: 1, right: 10),
            child: Text(
              overflow: TextOverflow.clip,
              "It’s a pleasure to meet you. We are\nexcited that you’re here so let’s get",
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: BodyColor,
              )
            ),
          ),
          SizedBox(height: 1.sp,),
          Padding(
            padding: const EdgeInsets.only(left: 1, right: 10),
            child: Text(
              overflow: TextOverflow.clip,"started!",

              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                  color: BodyColor,
                height: 1.sp
              )
            ),
          ),
          SizedBox(height: 40.sp,),
          InkWell(
            onTap: () {
              Get.to(Intro2());
            },
            child: Container(
              height:45.sp,
              width: 320.sp,
              decoration: BoxDecoration(
                color: ActiveColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child :Text("GET STARTED",style: TextStyle(
                fontWeight: FontWeight.w500,
                color: InputColor,
                fontSize: 18
              ),)),
            ),
          )
        ],
      ),
    );
  }
}
