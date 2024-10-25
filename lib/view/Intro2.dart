import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/utils/Img.dart';
import 'package:tamang_food_app/utils/color.dart';
import 'package:tamang_food_app/utils/variables.dart';

import 'package:tamang_food_app/view/sign_in.dart';

import '../Controller/intro_getx.dart';
import 'Buttons.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    var Controller =Get.put(IntroGetx());
    return Scaffold(

      backgroundColor: BGColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Obx(
          ()=> IndexedStack(
              index:Controller.introIndex.value,
              children: [
                Intro("All your favorites","Order from the best local restaurants\n with easy, on-demand delivery.",intro2),
                Intro("Free delivery offers","Order from the best local restaurants\n with easy, on-demand delivery.",intro3),
                Intro("Choose your food","Order from the best local restaurants\n with easy, on-demand delivery.",intro4),
              ],
            ),
          ),

          InkWell(
              onTap: () {
                Controller.introIndexIncrement();
              },
              child: Get_Button("GET STARTED")),


        ],
      ),
    );
  }

  Column Intro(String titel,String subTitel,String img) {
    var Controller =Get.put(IntroGetx());
    return Column(

          children: [
            SizedBox(height: 60.sp,),
            Stack(
              children: [


                Row(
                  children: [
                    SizedBox(width: 28.sp,),
                    Container(
                        height: 55.sp,
                        width: 55.sp,
                        child: Image.asset(logo,fit: BoxFit.cover,)),
                    SizedBox(width: 15.sp,),
                    Text(
                      "    Tamang\nFoodService ",
                      style: GoogleFonts.poppins(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                          height: 0.9.sp
                      ),
                    )

                  ],
                ),

                Padding(
                  padding:  EdgeInsets.only(top: (Controller.introIndex>0)? 80.sp:40.sp),
                  child: Center(
                    child: Container(

                        height: (Controller.introIndex>0)? 350.sp:390.sp,
                        width: (Controller.introIndex>0)? 320.sp:390.sp,

                        child: Image.asset(img,fit: BoxFit.contain,)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.sp,),
            Text(titel,style: GoogleFonts.poppins(

                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: MainColor
            ),),
            SizedBox(height: 5.sp,),
            Text(subTitel,style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: BodyColor,
                fontSize: 13.sp
            ),),
            SizedBox(height: 20.sp,),
            Container(
              width: 70.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: (Controller.introIndex==0)? 4.sp:3.sp,
                    backgroundColor:(Controller.introIndex==0)? GreenColor:BodyColor,
                  ),
                  CircleAvatar(
                    radius: (Controller.introIndex==1)? 4.sp:3.sp,
                    backgroundColor: (Controller.introIndex==1)? GreenColor:BodyColor,
                  ),
                  CircleAvatar(
                    radius: (Controller.introIndex==2)? 4.sp:3.sp,
                    backgroundColor: (Controller.introIndex==2)? GreenColor:BodyColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.sp,),

          ],
        );
  }
}


