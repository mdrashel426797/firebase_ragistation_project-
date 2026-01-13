import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

class FirebaseNotificationService {
  final _firebaseMessging = FirebaseMessaging.instance;

  initFCM()async{
    await _firebaseMessging.requestPermission();

    final fcmToken = await _firebaseMessging.getToken();
    print("FCM TOKEN:$fcmToken");
    
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message){
      print("message : ${message.notification?.title})");
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message){
      print("message : ${message.notification?.title})");
    });

    FirebaseMessaging.onBackgroundMessage((RemoteMessage message)async{
      print('Message : ${message.notification?.title}');
    });

  }
}