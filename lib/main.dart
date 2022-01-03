import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/helpers/constants/constants.dart';
import 'package:xtremessoft/src/modules/admin/presentation/index.dart';
import 'package:xtremessoft/src/modules/app/home.dart';
import 'package:xtremessoft/src/modules/properties/screens/index.dart';
import 'package:xtremessoft/src/modules/subagent/presentation/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: getPages,
      initialRoute: HOME,
    );
  }

  List<GetPage> getPages = [
    GetPage(name: HOME, page: () => HomeScreen()),
    GetPage(name: ADMIN, page: () => AdminScreen()),
    GetPage(name: PROPERTIES, page: () => PropertiesScreen()),
    GetPage(name: AGENT, page: () => SubAgentScreen()),
    //   GetPage(name: TOURISM, page: () => TourismScreen())
  ];
}
