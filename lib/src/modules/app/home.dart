import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/modules/auth/controller/controller.dart';
import 'package:xtremessoft/src/modules/properties/controller/controller.dart';
import 'package:xtremessoft/src/modules/properties/screens/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PropertyController propertyController;
  AuthController authController;
  @override
  void initState() {
    startSplashScreen();
    authController = Get.put(AuthController());
    authController.getCurrentUser();
    propertyController = Get.put(PropertyController());
    propertyController.bannerProperty();
    propertyController.listingProperties();

    super.initState();
  }

  startSplashScreen() {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Get.to(() => PropertiesScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    // final HomeScreenController homeScreenController =
    //     Get.put(HomeScreenController(), permanent: false);
    return SafeArea(
      child: Scaffold(
        //    bottomNavigationBar:
        //   buildBottomNavigationMenu(context, homeScreenController),
        backgroundColor: Colors.cyan[400],
        body: Center(
          child: Image(
            image: AssetImage('assets/icons/updatedlogo.png'),
          ),
        ),
      ),
    );
  }
}

// class HomeScreenController extends GetxController {
//   var tabIndex = 0.obs;

//   void changeTabIndex(int index) {
//     tabIndex.value = index;
//   }

//   @override
//   void onInit() {
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:xtremessoft/src/helpers/utils/utils.dart';
// import 'package:xtremessoft/src/modules/auth/presentation/signin/index.dart';
// import 'package:xtremessoft/src/modules/auth/presentation/signup/index.dart';
// import 'package:xtremessoft/src/modules/exam/presentation/index.dart';
// import 'package:xtremessoft/src/modules/properties/presentation/index.dart';
// import 'package:xtremessoft/src/modules/properties/presentation/widgets/bottom_navigation_bar.dart';
// import 'package:xtremessoft/src/modules/skill/presentation/index.dart';
// import 'package:xtremessoft/src/modules/tourism/presentation/index.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Column(mainAxisSize: MainAxisSize.min, children: [
//               Text(
//                 'XTREMES SOFT HOME',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   print('Tapped on Exam Screen');
//                   Get.to(() => ExamScreen());
//                 },
//                 child: Container(
//                   margin: EdgeInsets.only(top: 20.0),
//                   height: Utility.screenHeight(context) * 0.1,
//                   width: Utility.screenWidth(context) * 0.4,
//                   decoration: BoxDecoration(
//                     // color: Colors.red,
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Exam Screen',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 15.0),
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   print('Tapped on Properties Screen');
//                   Get.to(() => PropertiesScreen());
//                 },
//                 child: Container(
//                   margin: EdgeInsets.only(top: 5.0),
//                   height: Utility.screenHeight(context) * 0.1,
//                   width: Utility.screenWidth(context) * 0.4,
//                   decoration: BoxDecoration(
//                     // color: Colors.blue,
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Properties Screen',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 15.0),
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   print('Tapped on Skill Screen');
//                   Get.to(() => SkillScreen());
//                 },
//                 child: Container(
//                   margin: EdgeInsets.only(top: 5.0),
//                   height: Utility.screenHeight(context) * 0.1,
//                   width: Utility.screenWidth(context) * 0.4,
//                   decoration: BoxDecoration(
//                     //   color: Colors.yellow,
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Skill Screen',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 15.0),
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   print('Tapped on Tourism Screen');
//                   Get.to(() => TourismScreen());
//                 },
//                 child: Container(
//                   margin: EdgeInsets.only(top: 5.0),
//                   height: Utility.screenHeight(context) * 0.1,
//                   width: Utility.screenWidth(context) * 0.4,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     //   color: Colors.green,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Tourism Screen',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 15.0),
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   print('Tapped on LogInScreen');
//                   Get.to(() => SignInScreen());
//                 },
//                 child: Container(
//                   margin: EdgeInsets.only(top: 5.0),
//                   height: Utility.screenHeight(context) * 0.1,
//                   width: Utility.screenWidth(context) * 0.4,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     //    color: Colors.cyan,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'LogIn Screen',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 15.0),
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   print('Tapped on SignUpScreen');
//                   Get.to(() => SignUpScreen());
//                 },
//                 child: Container(
//                   margin: EdgeInsets.only(top: 5.0),
//                   height: Utility.screenHeight(context) * 0.1,
//                   width: Utility.screenWidth(context) * 0.4,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     //  color: Colors.teal,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'SignUp Screen',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 15.0),
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }
