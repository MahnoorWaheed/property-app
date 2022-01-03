import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/modules/auth/controller/controller.dart';
import 'package:xtremessoft/src/modules/subagent/presentation/commission_list.dart';
import 'package:xtremessoft/src/modules/subagent/presentation/customer_list.dart';
import 'package:xtremessoft/src/modules/subagent/presentation/properties_list.dart';
import 'package:xtremessoft/src/modules/subagent/presentation/rented_properties.dart';
import 'package:xtremessoft/src/modules/subagent/presentation/sold_properties.dart';

class SubAgentScreen extends StatefulWidget {
  @override
  _SubAgentScreenState createState() => _SubAgentScreenState();
}

class _SubAgentScreenState extends State<SubAgentScreen> {
  AuthController authController = AuthController();

  @override
  void initState() {
    authController = Get.find();
    authController.getCurrentUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan[900]),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.person,
                          size: 50.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    authController.user.roleName == null
                        ? Text('')
                        : Text(
                            '${authController.user.username}',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          )
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  print('Tapped on my properties');
                  Get.to(() => PropertiesListScreen());
                },
                leading: Icon(Icons.home),
                title: Text(
                  'My properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  print('tapped on commission list');

                  Get.to(() => CommissionListScreen());
                },
                leading: Icon(Icons.list_alt),
                title: Text(
                  'Commission list',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  print('sold properties');
                  Get.to(() => SoldPropertiesScreen());
                },
                leading: Icon(Icons.home),
                title: Text(
                  'Sold properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  print('rented properties');
                  Get.to(() => RentedPropertiesScreen());
                },
                leading: Icon(Icons.home),
                title: Text(
                  'Rented properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  print('tapped on returned properties');
                },
                leading: Icon(Icons.home),
                title: Text(
                  'Returned properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  print('tapped on disputed properties');
                },
                leading: Icon(Icons.home),
                title: Text(
                  'Disputed properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  print('tapped on classified property');
                },
                leading: Icon(Icons.home),
                title: Text(
                  'Classified property',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  print('uncalssified property');
                },
                leading: Icon(Icons.home),
                title: Text(
                  'Unclassified property',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  print('tapped customer list');
                  Get.to(() => CustomerListScreen());
                },
                leading: Icon(Icons.list_alt),
                title: Text(
                  'Customer list',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  print('Tapped on logout');
                  authController.logOut();
                  //  authController.getPrefs.clear();
                },
                leading: Icon(Icons.logout),
                title: Text(
                  'Log out',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.cyan[400],
          centerTitle: true,
          title: Container(
            height: 80,
            width: 150,
            foregroundDecoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icons/updatedlogo.png'),
                  fit: BoxFit.fill),
            ),
            //  color: Colors.red,
            //   child: Image.asset(''),
          ),
          actions: [
            Column(children: [
              Icon(
                Icons.person,
                size: 40.0,
              ),
              authController.user.roleName == null
                  ? Text('')
                  : Text('${authController.user.username}')
            ]),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('tapped on my properties ');
                      Get.to(() => PropertiesListScreen());
                    },
                    child: Container(
                      height: 110,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Column(
                          //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.home,
                              size: 50,
                            ),
                            Text(
                              'My',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Properties',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tapped on sold properties');
                      Get.to(() => SoldPropertiesScreen());
                    },
                    child: Container(
                      height: 110,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Column(
                          //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.check,
                              size: 50,
                            ),
                            Text(
                              'Sold',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Properties',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tapped on rented properties');
                      Get.to(() => RentedPropertiesScreen());
                    },
                    child: Container(
                      height: 110,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Column(
                          //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.home,
                              size: 50,
                            ),
                            Text(
                              'Rented',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Properties',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Tapped on rented properties');
                      Get.to(() => RentedPropertiesScreen());
                    },
                    child: Container(
                      height: 110,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Column(
                          //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.home,
                              size: 50,
                            ),
                            Text(
                              'Disputed',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Properties',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tapped on customer list');
                      Get.to(() => CustomerListScreen());
                    },
                    child: Container(
                      height: 110,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Column(
                          //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.person,
                              size: 50,
                            ),
                            Text(
                              'Customer',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'List',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tapped on commission list');
                      Get.to(() => CommissionListScreen());
                    },
                    child: Container(
                      height: 110,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Column(
                          //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.confirmation_num_sharp,
                              size: 50,
                            ),
                            Text(
                              'Commission',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'List',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
