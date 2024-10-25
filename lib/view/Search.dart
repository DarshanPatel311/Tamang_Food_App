import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/utils/color.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search",style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 25.sp
        ),),

        
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.sp,vertical: 5.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  
                ),
                prefixIcon: Icon(Icons.search,size: 25.sp,color: Colors.black54,),
                hintText: "Search on foodly",
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp
                )
              ),
            ),

            Text("Top Restaurants",style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              height: 3.sp
            ),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 140.sp,
                    width: 160.sp,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.sp),

                    ),

                  ),
                  Text("The Halal Guys",style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,


                  ),),
                  Text("\$\$ • Chinese" ,style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,


                  ),),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
