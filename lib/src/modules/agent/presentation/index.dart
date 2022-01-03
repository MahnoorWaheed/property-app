import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/modules/agent/presentation/profile.dart';
import 'package:xtremessoft/src/modules/agent/presentation/rented_properties.dart';
import 'package:xtremessoft/src/modules/agent/presentation/returned_properties.dart';
import 'package:xtremessoft/src/modules/agent/presentation/sold_properties.dart';
import 'package:xtremessoft/src/modules/agent/presentation/sub_agents_customer.dart';
import 'package:xtremessoft/src/modules/agent/presentation/sub_agents_list.dart';
import 'package:xtremessoft/src/modules/agent/presentation/total_properties_list.dart';
import 'package:xtremessoft/src/modules/auth/controller/controller.dart';

import 'commission_list.dart';

class AgentScreen extends StatefulWidget {
  @override
  _AgentScreenState createState() => _AgentScreenState();
}

class _AgentScreenState extends State<AgentScreen> {
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
                  Get.to(() => AgentProfile());
                },
                leading: Icon(Icons.account_circle),
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'All properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => AgentCommissionListScreen());
                },
                leading: Icon(Icons.list_alt),
                title: Text(
                  'Commission list',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Sold properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Rented properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => AgentReturnedPropertiesScreen());
                },
                leading: Icon(Icons.home),
                title: Text(
                  'Returned properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Disputed properties',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Sub Agents',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Classified property',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Unclassified property',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text(
                  'Customer list',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
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
          title: Icon(
            Icons.home,
            size: 70.0,
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
                      print('tapped on sub agents ');
                      Get.to(() => SubAgentListScreen());
                    },
                    child: Container(
                      //    height: 110,
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
                              'Sub',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Agents',
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
                      print('Tapped on total properties');
                      Get.to(() => TotalPropertiesListScreen());
                    },
                    child: Container(
                      //    height: 110,
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
                              'Total',
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
                      print('Tapped on sub agents customers');
                      Get.to(() => SubAgentCustomerListScreen());
                    },
                    child: Container(
                      //     height: 110,
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
                              'Sub Agents',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Customers',
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
                      Get.to(() => AgentRentedPropertiesScreen());
                    },
                    child: Container(
                      //     height: 110,
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
                  GestureDetector(
                    onTap: () {
                      print('Tapped on sold properties');
                      Get.to(() => AgentSoldPropertiesScreen());
                    },
                    child: Container(
                      //    height: 110,
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
                      print('Tapped on return properties');
                      Get.to(() => AgentReturnedPropertiesScreen());
                    },
                    child: Container(
                      //  height: 110,
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
                              Icons.keyboard_return,
                              size: 50,
                            ),
                            Text(
                              'Return',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'properties',
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
