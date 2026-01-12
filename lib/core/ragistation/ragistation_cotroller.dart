import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../logingpage/home_page.dart';


class RagestationController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void registasion() async {
    print("${email.text} \n pp${password.text}");
    print("=========================================");
    try {
      FirebaseAuth firebaseAuth = FirebaseAuth.instance;

      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );



      if (userCredential.user != null) {
        if (Get.isDialogOpen!) {
          Get.back();
        }
        // Get.offAllNamed(AppRoute.homePage);
        Get.to(()=>HomePage());

      }

    } catch (e) {
      if (Get.isDialogOpen!) {
        Get.back();
      }
      print(e.toString()+"Auth error");
      Get.snackbar(
        "error  ",
        e.toString(),
        snackPosition: SnackPosition.TOP,
        colorText: Colors.red,
      );
    }
  }
}
