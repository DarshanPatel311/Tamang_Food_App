import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Img.dart';
import '../utils/color.dart';
import 'Buttons.dart';

class ResetEmailSent extends StatelessWidget {
  const ResetEmailSent({super.key});

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
            Text("Reset email sent",style: GoogleFonts.poppins(
                fontSize: 25.sp,
                fontWeight: FontWeight.w300,
                color: MainColor,
                height: 1.1.sp
            ),),
            SizedBox(height: 6.sp,),
            Text("We have sent a instructions email to ",style: GoogleFonts.poppins(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: BodyColor
            ),),
            Row(
              children: [
                Text("sajin tamang@figma.com. ",style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: BodyColor
                ),),
                SizedBox(width: 8.sp,),
                Text("Having problem?",style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: ActiveColor
                ),),
              ],
            ),
            SizedBox(height: 40.sp,),

            Get_Button("SEND AGAIN"),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 130.sp,horizontal: 40.sp),
              child: Image.asset(resentEmail),
            )
          ],
        ),
      ),
    );
  }
}
