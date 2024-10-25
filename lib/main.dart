import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tamang_food_app/Controller/intro_getx.dart';
import 'package:tamang_food_app/utils/auth_gate.dart';
import 'package:tamang_food_app/view/Home.dart';
import 'package:tamang_food_app/view/Search.dart';

import 'package:tamang_food_app/view/create_account.dart';
import 'package:tamang_food_app/view/sign_in.dart';


import 'firebase_options.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(IntroGetx());
    return ScreenUtilInit(
      designSize:  Size(360,600),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:  (_ , child){
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: SearchScreen(),
        );
      },
    );
  }
}

