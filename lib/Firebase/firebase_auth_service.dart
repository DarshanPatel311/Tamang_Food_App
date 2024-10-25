import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tamang_food_app/view/Home.dart';

class FirebaseAuthSevices {
  static FirebaseAuthSevices firebaseAuthSevices = FirebaseAuthSevices._();

  FirebaseAuthSevices._();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> createGoogleAccount() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      firebaseAuth.signInWithCredential(credential);

      Get.to(()=>HomeScreen());
    } catch (e) {
      log(e.toString());
    }
  }

  Future<String> simpleLoginAccount(String email,String pwd)
  async {
    try{
      await firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: pwd
      );
      return 'Success';
    }catch(e)
    {
      log(e.toString());
      rethrow;
    }
  }

  Future<String> createSimpleAccount(String email,String pwd)
  async {
    try{
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: pwd
      );
      return 'Success';
    }catch(e)
    {
      log(e.toString());
      rethrow;
    }
  }
  User? currontUser(){
    return firebaseAuth.currentUser;
  }
}
