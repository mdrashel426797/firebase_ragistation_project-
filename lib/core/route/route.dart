import 'package:get/get.dart';
import 'package:ragister_firebase/home_page.dart';
import 'package:ragister_firebase/core/logingpage/loging_page.dart';

import '../ragistation/ragestation.dart';

class AppRoute{
  static const String login = "/login";
  static const String homePage ="/homePage";
  static const String ragestation ="/ragestation";






  static List<GetPage> route = [
    GetPage(name: login, page: () => Login()),
    GetPage(name: homePage, page: () => HomePage()),
    GetPage(name: ragestation, page: () => Ragestation()),

  ];

}