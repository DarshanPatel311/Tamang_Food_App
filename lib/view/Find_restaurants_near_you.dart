import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/utils/color.dart';

class Findrestaurantsnearyou  extends StatelessWidget {
  const Findrestaurantsnearyou ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(top: 30.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            IconButton(onPressed: () {

            }, icon: Icon(Icons.close,)),
          Column(
            children: [
              Center(
                child: Text("Find restaurants near you ",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 19.sp
                ),),
              ),
              Text("Please enter your location or allow access to",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: BodyColor
              ),),
              Text("  your location to find restaurants near you.",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: BodyColor
              ),),
              SizedBox(height: 30.sp,),
              Container(
                height:45.sp,
                width: 320.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                  border: Border.all(color: ActiveColor,width: 1.02.sp),



                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.near_me,color: ActiveColor,size: 20.sp,),
                    SizedBox(width: 10.sp,),
                    Text("Use current location",style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: ActiveColor
                    ),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.sp),
                color: Colors.grey.shade100,
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                      borderSide: BorderSide( color: Colors.grey.shade100),
                    ),
                    labelText: "Enter a new address",
                    prefixIcon: Icon(Icons.location_on)

                  ),
                ),
              )

            ],
          )
          ],
        ),
      ),
    );

  }
}
Future<String> convertToName(double latitude, double longitude) async {
  List<Placemark> placeMarks =
  await placemarkFromCoordinates(latitude, longitude);
  Placemark place = placeMarks[0];
  String placeName = "${place.locality}";
  log(place.locality!);
  log(latitude.toString());
  log(longitude.toString());
  return placeName;
}