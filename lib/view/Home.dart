import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/utils/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 35.sp,),
            Text("DELIVERY TO",style: TextStyle(
              fontWeight: FontWeight.w400,
              color: ActiveColor,
              fontSize: 13.sp

            ),),
            Row(
              children: [
                SizedBox(width: 95.sp,),
                Text("HayStreet, Perth",style: GoogleFonts.poppins(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w400
                ),),
                Icon(Icons.arrow_drop_down_outlined),
                SizedBox(width: 40.sp,),
                TextButton(
                  onPressed: () {

                  },
                  child: Text("Filter",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.black
                  ),),
                )
              ],
            ),
            Divider(),
            SizedBox(height: 10.sp,),
            Container(
              height: 160.sp,
              width: 330.sp,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.sp),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 10.sp,left: 15.sp,right: 10.sp),
              child: Row(
                children: [
                  Text("Featured Partners",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp
                  ),),
                  Spacer(),
                  Text("See all",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                    color: ActiveColor
                  ),)
                ],
              ),
            ),
            //Featured parthers
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:  EdgeInsets.only(top: 08.sp,left: 15.sp),
                child: Row(

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10.sp,),
                        Text("Krispy Creme",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 17.sp
                        ),),
                        Text("St Georgece Terrace Perth",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: BodyColor,
                          fontSize: 14.sp
                        ),),
                        Row(
                          children: [
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
                            SizedBox(width: 10.sp,),
                            Text("25min",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: BodyColor
                            ),),
                            SizedBox(width: 8.sp,),
                            Text("• Free delivery",style: TextStyle(

                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: BodyColor
                            ),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 20.sp,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10.sp,),
                        Text("Krispy Creme",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 17.sp
                        ),),
                        Text("St Georgece Terrace Perth",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: BodyColor,
                          fontSize: 14.sp
                        ),),
                        Row(
                          children: [
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
                            SizedBox(width: 10.sp,),
                            Text("25min",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: BodyColor
                            ),),
                            SizedBox(width: 8.sp,),
                            Text("• Free delivery",style: TextStyle(

                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: BodyColor
                            ),)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.sp,),
            Container(
              height: 160.sp,
              width: 330.sp,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.sp),
              ),
            ),

            //Best picks Restaurants by team
            Padding(
              padding:  EdgeInsets.only(top: 10.sp,left: 15.sp,right: 10.sp),
              child: Row(
                children: [
                  Text("Best Picks Restaurants\nby team",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp
                  ),),
                  Spacer(),
                  Text("See all",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      color: ActiveColor
                  ),)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:  EdgeInsets.only(top: 08.sp,left: 15.sp),
                child: Row(

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10.sp,),
                        Text("Krispy Creme",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp
                        ),),
                        Text("St Georgece Terrace Perth",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: BodyColor,
                            fontSize: 14.sp
                        ),),
                        Row(
                          children: [
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
                            SizedBox(width: 10.sp,),
                            Text("25min",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: BodyColor
                            ),),
                            SizedBox(width: 8.sp,),
                            Text("• Free delivery",style: TextStyle(

                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: BodyColor
                            ),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 20.sp,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10.sp,),
                        Text("Krispy Creme",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp
                        ),),
                        Text("St Georgece Terrace Perth",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: BodyColor,
                            fontSize: 14.sp
                        ),),
                        Row(
                          children: [
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
                            SizedBox(width: 10.sp,),
                            Text("25min",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: BodyColor
                            ),),
                            SizedBox(width: 8.sp,),
                            Text("• Free delivery",style: TextStyle(

                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: BodyColor
                            ),)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // All Restaurants
            Padding(
              padding:  EdgeInsets.only(top: 10.sp,left: 15.sp,right: 10.sp),
              child: Row(
                children: [
                  Text("All Restaurants",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp
                  ),),
                  Spacer(),
                  Text("See all",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      color: ActiveColor
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10.sp,),
            Padding(
              padding:  EdgeInsets.only(top: 10.sp,left: 15.sp,right: 10.sp),
              child: Column(

                children: [
                  Container(
                    height: 160.sp,

                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                  ),
                  SizedBox(height: 10.sp,),
                  Row(
                    children: [
                      Text("Krispy Creme",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp
                      ),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("💲・Chinese ・American ・Deshi food",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: BodyColor,
                          fontSize: 14.sp,
                        height: 1.5.sp
                      ),),
                    ],
                  ),
                  Row(
                    children: [
                      Text(" 4.3",style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp,
                          color: BodyColor,
                        height: 1.5 .sp
                      ),),
                      SizedBox(width: 8.sp,),
                      Text("⭐ 200+Ratings",style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp,
                          color: BodyColor
                      ),),
                      SizedBox(width: 8.sp,),
                      Text("⏱ 25 Min",style: TextStyle(

                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp,
                          color: BodyColor
                      ),),
                      SizedBox(width: 8.sp,),
                      Text("・Free",style: TextStyle(

                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp,
                          color: BodyColor
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.sp,)



          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [



        ],
      ),
    );
  }
}
