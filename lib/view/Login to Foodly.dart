import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:tamang_food_app/utils/color.dart';
import 'package:tamang_food_app/view/Buttons.dart';

import 'Find_restaurants_near_you.dart';
import 'create_account.dart';

class LogintoFoodly extends StatelessWidget {
  const LogintoFoodly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login to Foodly",
          style:
          GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 15.sp),
        ),
        centerTitle: true,
      ),
      body: Column(


        children: [
          SizedBox(height: 20.sp,),
          Center(
            child: Text("Verify phone number",style: GoogleFonts.poppins(
              fontSize: 19.sp,
              fontWeight: FontWeight.w600
            ),),
          ),
          SizedBox(height: 10.sp,),
          Text("Enter the 4-Digit code sent to you ",style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
            color: BodyColor

          ),),
          Text("at +610489632578",style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
            color: BodyColor

          ),),
          SizedBox(height: 20.sp,),
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 40.sp,
            style: TextStyle(
                fontSize: 17.sp
            ),
            textFieldAlignment: MainAxisAlignment.spaceEvenly,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          SizedBox(height: 30.sp,),

          GestureDetector(
              onTap: () {
                Get.to(Findrestaurantsnearyou());
              },
              child: Get_Button("CONTINUE")),
          SizedBox(height: 12.sp,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Didn’t receive code?",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: MainColor
              ),),
              SizedBox(width: 15.sp,),
              GestureDetector(
                onTap: () {


                },
                child: Text("Resend Again.",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: ActiveColor
                ),),
              ),

            ],
          ),
          SizedBox(height: 20.sp,),
          Text("By Signing up you agree to our Terms",style: GoogleFonts.poppins(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: BodyColor
          ),),
          Text(" Conditions & Privacy Policy.",style: GoogleFonts.poppins(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: BodyColor
          ),),


        ],
      ),
    );
  }
}
