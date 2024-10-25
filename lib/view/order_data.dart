import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/utils/color.dart';

class OrderData extends StatelessWidget {
  const OrderData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(image: AssetImage("assets/img/intro2.png"))
            ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.sp,vertical: 30.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: () {
                  Get.back();

                }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                Spacer(),
                Icon(Icons.ios_share_outlined,color: Colors.white,),
                SizedBox(width: 20.sp,),
                Icon(Icons.search,color: Colors.white,),
              ],
            ),
          ),
          ),
          Padding(
            padding:  EdgeInsets.all(10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mayfield Bakery & \nCafe",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp
                ),),
               Text("💲• Chinese • American • Deshi food",style: GoogleFonts.poppins(
                 fontSize: 15.sp,
                 height: 1.5.sp
               ),),
               Text("4.3 ⭐ 200+Ratings",style: GoogleFonts.poppins(

                 height: 2.sp
               ),),
                SizedBox(height: 15.sp,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("💲",style: TextStyle(

                      fontSize: 16.sp
                    ),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Free",style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500
                        ),),
                        Text("Delivery",style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,

                        ),),

                      ],
                    ),
                    SizedBox(width: 15.sp,),
                    Text("⏱",style: TextStyle(
                        fontSize: 16.sp
                    ),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("25",style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500
                        ),),
                        Text("Minutes",style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,

                        ),),

                      ],
                    ),
                    Spacer(),
                    //Add to cart
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        height: 35.sp,
                        width: 100.sp,
                      decoration: BoxDecoration(

                        border: Border.all(color: ActiveColor,width: 1.5.sp),
                        borderRadius: BorderRadius.circular(8.sp)
                      ),
                        child: Center(
                          child: Text("Add",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ActiveColor,
                            fontSize: 15.sp
                          ),),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 15.sp,),
                Text("Featured Items",style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400
                ),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding:  EdgeInsets.only(top: 08.sp,left: 0.sp),
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
              ],
            ),
          ),


        ],
      ),

    );
  }
}
