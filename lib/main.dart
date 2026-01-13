import 'dart:ffi';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ragister_firebase/core/logingpage/loging_page.dart';
import 'package:ragister_firebase/firebase_options.dart';

import 'core/firebase_notification_service.dart';
import 'core/route/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final notificationService = FirebaseNotificationService();
  await notificationService.initFCM();
 FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Login(),
      getPages: AppRoute.route,
    );
  }
}

Future<void> handleBackgroundMessage(RemoteMessage message) async =>
    print('message:${message.notification?.title}');
