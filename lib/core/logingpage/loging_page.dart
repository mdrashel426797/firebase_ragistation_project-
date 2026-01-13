import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ragister_firebase/core/route/route.dart';
import 'package:ragister_firebase/core/widgets/custombuttontwo.dart';

import '../widgets/textfrom_filt.dart';
import 'loging_controller.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final LoningController controller = Get.put(LoningController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 283.5),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 15),

                      TextFormField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(),
                        ),
                        controller: controller.email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Type Your Email";
                          }
                          return null;
                        },
                      ),


                      SizedBox(height: 30),
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 15),



                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: controller.password,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Type Your Password";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 36),
                      GestureDetector(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            Get.dialog(
                              Center(
                                child: CircularProgressIndicator(
                                  color: Colors.blue,
                                ),
                              ),
                            );
                            controller.login();
                          }
                        },
                        child: CustombuttonTwo(
                          width: double.maxFinite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(20),
                          ),
                          text: "Login",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 36),
                        child: Row(
                          children: [
                            Text(
                              "Don’t have an account yet?",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF1C1C1E),
                              ),
                            ),
                            SizedBox(width: 3),


                            GestureDetector(
                              onTap: () {
                              Get.toNamed(AppRoute.ragestation);
                              },
                              child: Text(
                                "Ragistrasion",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF0D1361),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
