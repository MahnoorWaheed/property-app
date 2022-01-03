import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/helpers/utils/utils.dart';
import 'package:xtremessoft/src/modules/auth/controller/controller.dart';
import 'package:xtremessoft/src/modules/auth/presentation/signin/index.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  AuthController authController;

  @override
  void initState() {
    //  authController = Get.find();
    authController = Get.put(AuthController());
    authController.getCurrentUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Container(
      //           height: 50,
      //           width: 50,
      //           foregroundDecoration: BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage('assets/icons/updatedlogo.png'),
      //                 fit: BoxFit.fill),
      //           ),
      //           color: Colors.red,
      //           //   child: Image.asset(''),
      //         ),
      //       ),
      //       ListTile(
      //         title: Text('Item 1'),
      //         // onTap: () {
      //         //   Navigator.pop(context);
      //         // },
      //       ),
      //       ListTile(
      //         title: Text('Item 2'),
      //         // onTap: () {
      //         //   Navigator.pop(context);
      //         // },
      //       ),
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: Stack(children: [
          authController.user != null
              ? Container(
                  child: Column(
                    //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 50.0),
                              child: Text(
                                'Profile',
                                //'${authController.user.username}',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ]),
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Phone#',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Container(
                        //    color: Colors.red,
                        height: Utility.screenHeight(context) * 0.15,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Details:',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                  'The following is the details of xyz, the details..')
                            ]),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Tapped on log out in Admin panel');
                          authController.logOut();
                          authController.getPrefs.clear();
                          print(
                              'INSDIE LOG OUT::::::::: ${authController.getPrefs.getString('currentUser')}');
                        },
                        child: Container(
                          height: Utility.screenHeight(context) * 0.05,
                          width: Utility.screenWidth(context) * 0.2,

                          color: Colors.green,
                          // margin: EdgeInsets.only(top: 20.0),
                          child: Center(
                            child: Container(
                              color: Colors.red,
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Text('Log out'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Center(
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        print('Tapped on logged in');

                        Get.to(() => SignInScreen());
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20.0),
                        color: Colors.red,
                        height: 50,
                        width: 100,
                        child: Center(child: Text('Login')),
                      ),
                    ),
                  ),
                ),
          Positioned(
            child: Container(
              //  color: Colors.red,
              height: Utility.screenHeight(context) * 0.1,
              width: Utility.screenWidth(context) * 0.6,
              child: AppBar(
                title: Container(
                  height: 100,
                  // width: 50,
                  foregroundDecoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/updatedlogo.png'),
                        fit: BoxFit.fill),
                  ),
                  // color: Colors.red,
                  //   child: Image.asset(''),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
