import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/color.dart';

Widget Get_Button(String titel, {void Function()? onTap}) {

  return GestureDetector(
    onTap: onTap,
    child: Container(
      height:45.sp,
      width: 320.sp,
      decoration: BoxDecoration(
        color: ActiveColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child :Text(titel,style: TextStyle(
          fontWeight: FontWeight.w500,
          color: InputColor,
          fontSize: 14.sp
      ),)),
    ),
  );
}
Widget facebookButton(Color bgColor,String name,String logo) {
  return Container(
    height: 38.sp,
    width: 300.sp,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.sp),
      color: bgColor,
    ),
    child: Row(
      children: [
        SizedBox(width: 10.sp,),
        Container(
          height: 25.sp,
          width: 25.sp,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(logo),
              ),
              borderRadius: BorderRadius.circular(4.sp),
              color: Colors.white

          ),

        ),
        SizedBox(width: 30.sp,),
        Text(name,style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            color: InputColor
        ),)
      ],
    ),
  );
}
