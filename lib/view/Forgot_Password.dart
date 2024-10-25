import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/view/reset_email_sent.dart';

import '../utils/color.dart';
import 'Buttons.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password",style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 15.sp
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 13.sp,top: 10.sp,right: 13.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Forgot password",style: GoogleFonts.poppins(
                fontSize: 27.sp,
                fontWeight: FontWeight.w300,
                color: MainColor,
                height: 1.1.sp
            ),),
            SizedBox(height: 6.sp,),
            Text("Enter your email address and we will \nsend you a reset instructions.",style: GoogleFonts.poppins(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: BodyColor
            ),),
            SizedBox(height: 40.sp,),
            Text("EMAIL ADDRESS",style: GoogleFonts.poppins(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: BodyColor,
                height: 0.001.sp
            ),),

            TextField(),
            SizedBox(height: 20.sp,),
            GestureDetector(
                onTap: () {
                  Get.to(ResetEmailSent());
                },
                child: Get_Button("RESET PASSWORD"))
          ],
        ),
      ),
    );
  }
}
