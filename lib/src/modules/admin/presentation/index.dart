import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/modules/admin/presentation/agents.dart';
import 'package:xtremessoft/src/modules/admin/presentation/project_list.dart';
import 'package:xtremessoft/src/modules/admin/presentation/total_properties_list.dart';
import 'package:xtremessoft/src/modules/auth/controller/controller.dart';
import 'package:xtremessoft/src/modules/properties/screens/index.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
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
                  Get.to(PropertiesScreen());
                },
                leading: Icon(Icons.home),
                title: Text(
                  'App home',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => AgentListScreen());
                },
                leading: Icon(Icons.person),
                title: Text(
                  'Agent list',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text(
                  'Commission list',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => PropertiesListScreen());
                },
                leading: Icon(Icons.list_alt),
                title: Text(
                  'Property list',
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
                leading: Icon(Icons.home),
                title: Text(
                  'sold properties',
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
                leading: Icon(Icons.home),
                title: Text(
                  'Pending classified property',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.restore),
                title: Text(
                  'Account reset list',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => ProjectListScreen());
                },
                leading: Icon(Icons.list_alt),
                title: Text(
                  'Project list',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text(
                  'Classified project list',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Client pending properties',
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
                      print('tapped on agents ');
                      Get.to(() => AgentListScreen());
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
                              'Agents',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tapped on sub agents');
                      //   Get.to(() => SoldPropertiesScreen());
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
                      print('Tapped on agent customer');
                      //   Get.to(() => RentedPropertiesScreen());
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
                              'Agent',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Customer',
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
                      print('Tapped on sub agent customer');
                      Get.to(() => AgentListScreen());
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
                              'Sub Agent',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Customer',
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
                      Get.to(() => PropertiesListScreen());
                      //     Get.to(() => PropertiesListScreen());
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
                      print('Tapped on area wise properties');
                      //     Get.to(() => RentedPropertiesScreen());
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
                              Icons.location_city,
                              size: 50,
                            ),
                            Text(
                              'Area wise',
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
              )
            ],
          ),
        ));
  }
}
