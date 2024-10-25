import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang_food_app/main.dart';
import 'package:tamang_food_app/utils/color.dart';
import 'package:tamang_food_app/view/Buttons.dart';

class YourOrders extends StatelessWidget {
  const YourOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders",style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 16.sp

        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 20.sp,),
            Column(

              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Row(
                    children: [
                      Container(
                        height: 31.sp,
                        width: 28.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.sp),
                          border: Border.all(color: Colors.grey,width: 1.sp)
                        ),
                        child: Center(
                          child: Text("1",style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: ActiveColor
                          ),),
                        ),
                      ),
                      SizedBox(width: 15.sp,),
                      Text("Cookie Sandwich",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.sp,
                      ),),
                      Spacer(),
                      Text("AUD＄10",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: ActiveColor
                      ),),


                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Row(
                    children: [

                      SizedBox(width: 45.sp,),
                      Text("Shortbread, chocolate turtle \ncookies, and red velvet.",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: BodyColor

                      ),),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 8.sp,horizontal: 15.sp),
                  child: Divider(height: 1.5.sp,),
                ),
              ],
            ),
            Column(

              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Row(
                    children: [
                      Container(
                        height: 31.sp,
                        width: 28.sp,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.sp),
                            border: Border.all(color: Colors.grey,width: 1.sp)
                        ),
                        child: Center(
                          child: Text("1",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ActiveColor
                          ),),
                        ),
                      ),
                      SizedBox(width: 15.sp,),
                      Text("Cookie Sandwich",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.sp,
                      ),),
                      Spacer(),
                      Text("AUD＄10",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          color: ActiveColor
                      ),),


                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Row(
                    children: [

                      SizedBox(width: 45.sp,),
                      Text("Shortbread, chocolate turtle \ncookies, and red velvet.",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: BodyColor

                      ),),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 8.sp,horizontal: 15.sp),
                  child: Divider(height: 1.5.sp,),
                ),
              ],
            ),
            Column(

              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Row(
                    children: [
                      Container(
                        height: 31.sp,
                        width: 28.sp,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.sp),
                            border: Border.all(color: Colors.grey,width: 1.sp)
                        ),
                        child: Center(
                          child: Text("1",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ActiveColor
                          ),),
                        ),
                      ),
                      SizedBox(width: 15.sp,),
                      Text("Cookie Sandwich",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.sp,
                      ),),
                      Spacer(),
                      Text("AUD＄10",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          color: ActiveColor
                      ),),


                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Row(
                    children: [

                      SizedBox(width: 45.sp,),
                      Text("Shortbread, chocolate turtle \ncookies, and red velvet.",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: BodyColor

                      ),),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 8.sp,horizontal: 15.sp),
                  child: Divider(height: 1.5.sp,),
                ),
              ],
            ),
            SizedBox(height: 30.sp,),



            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.sp,vertical: 10.sp),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Subtotal",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                      ),),
                      Spacer(),
                      Text("AUD＄30",style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("Delivery",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        height: 2.sp
                      ),),
                      Spacer(),
                      Text("＄0",style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  Row(
                    children: [

                      Spacer(),
                      Text("AUD＄30",style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ActiveColor
                      ),)
                    ],
                  ),
                ],
              ),
            ),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 15.sp,vertical: 5.sp),
             child: Column(
                children: [
                  Row(
                    children: [
                      Text("Add more items",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.5.sp,
                          color: ActiveColor
                      ),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,size: 17.sp,)
                    ],
                  ),
                  SizedBox(height: 10.sp,),
                  Divider(),
                  SizedBox(height: 10.sp,),
                  Row(
                    children: [
                      Text("Promo code",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.5.sp,

                      ),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,size: 17.sp,)
                    ],
                  ),
                  SizedBox(height: 10.sp,),
                  Divider(),
                ],
             ),
           ),
            SizedBox(height: 20.sp,),
            Get_Button("Continue (AUD ＄30)"),
            SizedBox(height: 30.sp,),




          ],
        ),
      ),
    );
  }
}
