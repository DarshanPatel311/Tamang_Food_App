import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/color.dart';

class FeaturedPartners extends StatelessWidget {
  const FeaturedPartners({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Featured Partners",
          style: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,

      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250.sp,
                  width: 150.sp,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.sp)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Spacer(),
                        Text("⏱ 25min",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 14.sp

                        ),),
                        Row(
                          children: [
                            Text("💲Free",style: TextStyle(
                                height: 2.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 13.sp

                            ),),
                            Spacer(),
                            Container(
                              height: 20.sp,
                              width: 40.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.sp),
                                  color: ActiveColor
                              ),
                              child: Center(
                                child: Text("4.5",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 05.sp,),
                Text("Tacos Nanchas",style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400
                ),),
                Text("Chinese • American",style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: BodyColor
                ),),

              ],
            ),
          ),
         ],
      ),
    );
  }
}
