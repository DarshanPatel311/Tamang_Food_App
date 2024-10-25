import 'dart:developer';

import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:tamang_food_app/view/sign_in.dart';

import '../utils/variables.dart';
import '../view/Find_restaurants_near_you.dart';

class IntroGetx extends GetxController {
  RxInt introIndex = 0.obs;
  final Location location = Location();

  void introIndexIncrement() {
    if (introIndex == 2) {
      Get.to(SignInScreen());
    } else {
      introIndex++;
    }
  }


  @override
  onInit()
  {
    super.onInit();
    liveLocation();
  }

  Future<void> liveLocation() async {
    bool serviceEnabled;

    try {
      serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          print('object');
        }
      }

      PermissionStatus permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          print('object');
        }
      }

      location.onLocationChanged.listen((locationData) async {
        double latitude = locationData.latitude!;
        double longitude = locationData.longitude!;
        String placeName = await convertToName(latitude, longitude);
      });
    } catch (e) {
      log(e.toString());
    }
  }
}
