import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/helpers/utils/utils.dart';
import 'package:xtremessoft/src/modules/admin/presentation/index.dart';
import 'package:xtremessoft/src/modules/auth/controller/controller.dart';
import 'package:xtremessoft/src/modules/auth/presentation/signin/index.dart';
import 'package:xtremessoft/src/modules/properties/controller/banner_controller.dart';
import 'package:xtremessoft/src/modules/properties/controller/controller.dart';
import 'package:xtremessoft/src/modules/properties/controller/xtremes_projects_controller.dart';
import 'package:xtremessoft/src/modules/properties/controller/xtremes_properties_controller.dart';
import 'package:xtremessoft/src/modules/properties/models/property_list_model.dart';
import 'package:xtremessoft/src/modules/properties/screens/banner_details.dart';

import 'package:xtremessoft/src/modules/properties/screens/details.dart';
import 'package:xtremessoft/src/modules/properties/screens/properties_agents.dart';
import 'package:xtremessoft/src/modules/properties/screens/xtremes_projects.dart';
import 'package:xtremessoft/src/modules/properties/screens/xtremes_properties.dart';

class PropertiesScreen extends StatefulWidget {
  @override
  _PropertiesScreenState createState() => _PropertiesScreenState();
}

class _PropertiesScreenState extends State<PropertiesScreen> {
  AuthController authController = AuthController();
  // Future<List<PropertyListModel>> details;
  PropertyController propertyController = PropertyController();

  XtremesProjectsController xtremesProjectsController;

  BannerController bannerController;

  XtremesPropertiesController xtremesPropertiesController =
      Get.put(XtremesPropertiesController());
  @override
  void initState() {
    propertyController = Get.find();

    bannerController = Get.put(BannerController());
    xtremesProjectsController = Get.put(XtremesProjectsController());

    propertyController.getSpecialOffers();

    // propertyController.bannerProperty();

    // details =
    //     propertyController.propertyList as Future<List<PropertyListModel>>;
    authController = Get.find();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.cyan[500],
                ),
                child: Container(
                  foregroundDecoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/updatedlogo.png'),
                      //   fit: BoxFit.fill
                    ),
                  ),
                  //  color: Colors.red,
                  //   child: Image.asset(''),
                ),
              ),

              ListTile(
                onTap: () {
                  print('Tapped on agents tile in properties index screen');
                  Get.to(() => PropertiesAgents());
                },
                leading: Icon(Icons.person),
                title: Text('Our Agents'),
              ),
              ListTile(
                onTap: () async {
                  print(
                      'Tapped on our project tile in properties index screen');
                  await xtremesProjectsController.getProjectsDetails();

                  Get.to(() => XtremesProjects());
                },
                leading: Icon(Icons.apartment),
                title: Text('Our Projects'),
              ),
              ListTile(
                onTap: () async {
                  print('Tapped on our tile in properties index screen');
                  await xtremesPropertiesController.getPropertiesData(1);
                  Get.to(() => XtremesProperties());
                },
                leading: Icon(Icons.home),
                title: Text('Our Properties'),
              ),

              // ListTile(
              //   onTap: () {
              //     print('Tapped on profile tile in properties index screen');
              //   },
              //   leading: Icon(Icons.person),
              //   title: Text('Profile'),
              // ),

              authController.user != null
                  ? ListTile(
                      onTap: () {
                        print('Tapped on logout in properties index screen');
                        authController.logOut();
                        authController.getPrefs.clear();
                      },
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                    )
                  : ListTile(
                      onTap: () {
                        print('Tapped on login in properties index screen');
                        Get.to(() => SignInScreen());
                      },
                      leading: Icon(Icons.logout),
                      title: Text('Login'),
                    )
              // ListTile(
              //   title: GestureDetector(
              //     onTap: () {
              //     //  Get.to(() => AdminScreen());
              //     },
              //     child: Container(
              //       child: Text('Admin'),
              //     ),
              //   ),
              //   // onTap: () {
              //   //   Navigator.pop(context);
              //   // },
              // ),
              // ListTile(
              //   title: Text('Item 2'),
              //   // onTap: () {
              //   //   Navigator.pop(context);
              //   // },
              // ),
            ],
          ),
        ),
        body: SafeArea(
          //    top: false,
          // bottom: false,
          child: SingleChildScrollView(
            child: Stack(children: [
              Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    //    padding: EdgeInsets.only(bottom: 50),
                    height: Utility.screenHeight(context) * 0.163,

                    decoration: BoxDecoration(
                      color: Colors.cyan[500],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(28.0),
                        bottomRight: Radius.circular(28.0),
                      ),
                    ),

                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(right: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: Utility.screenHeight(context) * 0.04,
                              width: Utility.screenWidth(context) * 0.25,
                              margin: EdgeInsets.only(top: 30.0),
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print('Tapped on BUY');
                                    },
                                    child: Container(
                                      width:
                                          Utility.screenWidth(context) * 0.12,
                                      decoration: BoxDecoration(
                                        color: Colors.cyan[100],
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'BUY',
                                          style: TextStyle(
                                              color: Colors.blue[900]),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('Tapped on RENT');
                                    },
                                    child: Container(
                                      width:
                                          Utility.screenWidth(context) * 0.12,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'RENT',
                                          style: TextStyle(
                                              color: Colors.blue[900]),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      // TODO: FILTERS

                      // Container(
                      //   margin: EdgeInsets.only(top: 15.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     children: [
                      //       Container(
                      //         height: Utility.screenHeight(context) * 0.04,
                      //         width: Utility.screenHeight(context) * 0.08,
                      //         decoration: BoxDecoration(
                      //           border: Border.all(color: Colors.white),
                      //           color: Colors.cyan[300],
                      //         ),
                      //         child: Center(
                      //           child: Row(children: [
                      //             DropdownButton<String>(
                      //               dropdownColor: Colors.cyan[300],
                      //               hint: Text(
                      //                 'Filter',
                      //                 // authController.user.username == null
                      //                 //     ? 'Name is null'
                      //                 //     : '${authController.user.username}',
                      //                 style: TextStyle(color: Colors.white),
                      //               ),
                      //               items: <String>['A', 'B', 'C', 'D']
                      //                   .map((String value) {
                      //                 return DropdownMenuItem<String>(
                      //                   value: value,
                      //                   child: Text(value),
                      //                 );
                      //               }).toList(),
                      //               onChanged: (_) {},
                      //             ),
                      //           ]),
                      //         ),
                      //       ),
                      //       Container(
                      //         height: Utility.screenHeight(context) * 0.04,
                      //         width: Utility.screenHeight(context) * 0.13,
                      //         decoration: BoxDecoration(
                      //           border: Border.all(color: Colors.white),
                      //           color: Colors.cyan[300],
                      //         ),
                      //         child: Center(
                      //           child: Row(children: [
                      //             DropdownButton<String>(
                      //               dropdownColor: Colors.cyan[300],
                      //               hint: Text(
                      //                 'Location',
                      //                 style: TextStyle(color: Colors.white),
                      //               ),
                      //               items: <String>[
                      //                 'Peshawar',
                      //                 'Islamabad',
                      //                 'Mardan',
                      //                 'Lahore',
                      //               ].map((String value) {
                      //                 return DropdownMenuItem<String>(
                      //                   value: value,
                      //                   child: Text(value),
                      //                 );
                      //               }).toList(),
                      //               onChanged: (_) {
                      //                 print('value is:::::: $Value');
                      //               },
                      //             ),
                      //           ]),
                      //         ),
                      //       ),
                      //       Container(
                      //         height: Utility.screenHeight(context) * 0.04,
                      //         width: Utility.screenHeight(context) * 0.15,
                      //         decoration: BoxDecoration(
                      //           border: Border.all(color: Colors.white),
                      //           color: Colors.cyan[300],
                      //         ),
                      //         child: Center(
                      //           child: Row(children: [
                      //             DropdownButton<String>(
                      //               dropdownColor: Colors.cyan[300],
                      //               hint: Text(
                      //                 'Price Range',
                      //                 style: TextStyle(color: Colors.white),
                      //               ),
                      //               itemHeight: kMinInteractiveDimension,
                      //               items: <String>[
                      //                 '1500000000',
                      //                 '3560000',
                      //                 '4580000',
                      //                 '85400000',
                      //               ].map((String value) {
                      //                 return DropdownMenuItem<String>(
                      //                   value: value,
                      //                   // child: new Text('Location'),
                      //                   child: Text(value),
                      //                 );
                      //               }).toList(),
                      //               onChanged: (_) {},
                      //             ),
                      //           ]),
                      //         ),
                      //       ),
                      //       Container(
                      //         height: Utility.screenHeight(context) * 0.04,
                      //         width: Utility.screenHeight(context) * 0.1,
                      //         decoration: BoxDecoration(
                      //           border: Border.all(color: Colors.white),
                      //           color: Colors.cyan[300],
                      //         ),
                      //         child: Center(
                      //           child: Row(children: [
                      //             Container(
                      //               margin: EdgeInsets.only(left: 8.0),
                      //               child: Text(
                      //                 'Search',
                      //                 style: TextStyle(color: Colors.white),
                      //               ),
                      //             ),
                      //             Icon(
                      //               Icons.search,
                      //               size: 20.0,
                      //               color: Colors.white,
                      //             )
                      //           ]),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ]),
                  ),
                  Container(
                    //    color: Colors.black,
                    height: Utility.screenHeight(context) * 0.78,
                    // color: Colors.red,
                    child: ListView(children: [
                      GestureDetector(
                        onTap: () async {
                          print('Tapped on see More');

                          await xtremesProjectsController.getProjectsDetails();

                          Get.to(() => XtremesProjects());
                        },
                        child: Container(
                          child: Column(children: [
                            Row(children: [
                              Text(
                                'OUR PROJECTS',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'See More',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ]),
                        ),
                      ),
                      GetBuilder<PropertyController>(
                        init: PropertyController(),
                        //   id: 1,
                        builder: (_) => propertyController.isLoading == true
                            ? Container(
                                // color: Colors.black12.withOpacity(0.1),
                                height: Utility.screenHeight(context) * 0.38,
                                //  color: Colors.red,
                                child: Container(
                                    //   child: Text('NO data found'),
                                    // width: MediaQuery.of(context).size.width,
                                    // height: MediaQuery.of(context).size.height,
                                    // color: Colors.black12.withOpacity(0.1),
                                    // child: Center(
                                    //     child: CircularProgressIndicator()),
                                    ),
                              )
                            : Container(
                                height: 300,
                                width: double.infinity,
                                //   color: Colors.green,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: propertyController.banner.length,
                                  itemBuilder: (context, int i) => Container(
                                    child: GestureDetector(
                                      onTap: () async {
                                        print('Tapped on banner details');

                                        print(
                                            'id iss ${propertyController.banner[i].propertyID}');
                                        await propertyController
                                            .propertiesDetails(
                                                propertyController
                                                    .banner[i].propertyID);
                                        await bannerController.floorPlanDetails(
                                            propertyController
                                                .banner[i].propertyID);
                                        await bannerController
                                            .paymentPlanDetails();
                                        Get.to(
                                          () => BannerDetails(),
                                        );
                                      },
                                      child: Stack(children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 15.0, left: 8.0, right: 8.0),
                                          height:
                                              Utility.screenHeight(context) *
                                                  0.35,
                                          width:
                                              Utility.screenWidth(context) * 1,
                                          foregroundDecoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://xtremesproperty.com/Temp/${propertyController.banner[i].imageName}'),
                                                fit: BoxFit.fill),
                                          ),
                                          //        color: Colors.yellow,
                                        ),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 15.0),
                                                height: 100,
                                                width: 150,
                                                color: Colors.white,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      color: Colors.cyan[900],
                                                      child: Text(
                                                        '${propertyController.banner[i].categoryTypeName}',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Text(
                                                      '${propertyController.banner[i].title}',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ]),
                                        // Column(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.spaceAround,
                                        //     children: [
                                        //       Container(
                                        //         height: 20,
                                        //         width: 20,
                                        //         color: Colors.blue,
                                        //       ),
                                        //     ])
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                      ),

                      GestureDetector(
                        onTap: () {
                          print('Tapped on see More');
                          //     propertyController.getSpecialOffers();
                          //   Get.to(() => Propert)
                          // Get.to(() => )
                        },
                        child: Container(
                          child: Column(children: [
                            Row(children: [
                              Text(
                                'SPECIAL OFFERS',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'See More',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ]),
                        ),
                      ),

                      Container(
                        height: 250,
                        width: 250,
                        //     width: double.infinity,
                        //       color: Colors.green,
                        child: GetBuilder<PropertyController>(
                          //  init: PropertyController(),
                          //   id: 1,
                          builder: (_) => propertyController.isLoading == true
                              ? Container(
                                  // color: Colors.black12.withOpacity(0.1),
                                  height: Utility.screenHeight(context) * 0.38,
                                  //  color: Colors.red,
                                  child: Container(
                                      //   child: Text('NO data found'),
                                      // width: MediaQuery.of(context).size.width,
                                      // height: MediaQuery.of(context).size.height,
                                      // color: Colors.black12.withOpacity(0.1),
                                      // child: Center(
                                      //     child: CircularProgressIndicator()),
                                      ),
                                )
                              : ListView.builder(
                                  itemCount: propertyController
                                      .specialOfferList.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, int i) =>
                                      GestureDetector(
                                    onTap: () {
                                      print('Tapped on Special offers');
                                      propertyController
                                          .singleListPropertiesDetails(
                                              propertyController
                                                  .specialOfferList[i]
                                                  .propertyId);
                                      Get.to(() => PropertyDetails());
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5.0),
                                      height: 150,
                                      width: 220,
                                      //  color: Colors.red,
                                      foregroundDecoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://xtremesproperty.com/Temp/${propertyController.specialOfferList[i].imageName}'),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          print('Tapped on see More');
                          await xtremesPropertiesController
                              .getPropertiesData(1);
                          Get.to(() => XtremesProperties());
                        },
                        child: Container(
                          child: Column(children: [
                            Row(children: [
                              Text(
                                'Our Properties',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'See More',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ]),
                        ),
                      ),

                      Container(
                        height: 220,
                        width: 250,
                        //     width: double.infinity,
                        //   color: Colors.green,
                        child: GetBuilder<PropertyController>(
                          init: PropertyController(),
                          // id: 2,
                          // autoRemove: false,
                          builder: (_) => propertyController.isLoading == true
                              ? Container(
                                  // width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height,
                                  // color: Colors.black12.withOpacity(0.1),
                                  // child: Center(
                                  //     child: CircularProgressIndicator()),
                                  )
                              : ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      propertyController.propertyList.length,
                                  itemBuilder: (context, int i) =>

                                      //     ? Center(
                                      //         child: Container(
                                      //           child: Center(
                                      //             child: CircularProgressIndicator(),
                                      //           ),
                                      //         ),
                                      //       )
                                      //     :
                                      Container(
                                    //    color: Colors.red,
                                    height: 150,
                                    width: 200,
                                    margin: EdgeInsets.only(right: 5.0),
                                    // child: Row(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.spaceAround,
                                    //     children: [
                                    child: Stack(children: [
                                      GestureDetector(
                                        onTap: () async {
                                          await propertyController
                                              .singleListPropertiesDetails(
                                                  propertyController
                                                      .propertyList[i]
                                                      .propertyID);

                                          Get.to(() => PropertyDetails());
                                        },
                                        child: Container(
                                          height:
                                              Utility.screenHeight(context) *
                                                  0.28,
                                          width: Utility.screenWidth(context) *
                                              0.47,
                                          foregroundDecoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://xtremesproperty.com/Temp/${propertyController.propertyList[i].imageName}'),
                                                fit: BoxFit.fill),
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 2.0,
                                          left: 2.0,
                                        ),
                                        height: Utility.screenHeight(context) *
                                            0.024,
                                        color: Colors.cyan[100],
                                        child: Text(
                                          '${propertyController.propertyList[i].categoryTypeName}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ]),
                                    //    ]),
                                  ),
                                ),
                        ),
                      ),
                      // Container(
                      //     margin: EdgeInsets.only(top: 10.0),
                      //     //  color: Colors.green,
                      //     height: 300,
                      //     width: 150,
                      //     child: GetBuilder<PropertyController>(
                      //       init: PropertyController(),
                      //       id: 2,
                      //       autoRemove: false,
                      //       builder: (_) => propertyController.isLoading == true
                      //           ? Container(
                      //               child: Text(''),
                      //             )
                      //           :
                      //           //     ? Center(
                      //           //         child: Container(
                      //           //           child: Center(
                      //           //             child: CircularProgressIndicator(),
                      //           //           ),
                      //           //         ),
                      //           //       )
                      //           //     :

                      //           //     IgnorePointer(
                      //           //    child:
                      //           GridView.builder(
                      //               //    physics: NeverScrollableScrollPhysics(),
                      //               shrinkWrap: true,
                      //               primary: true,
                      //               //         controller: controller,
                      //               itemCount:
                      //                   propertyController.propertyList.length,
                      //               gridDelegate:
                      //                   SliverGridDelegateWithFixedCrossAxisCount(
                      //                 crossAxisCount: 2,
                      //               ),
                      //               itemBuilder:
                      //                   (BuildContext context, int i) =>
                      //                       Container(
                      //                 margin: EdgeInsets.only(top: 10.0),
                      //                 child: Row(
                      //                     mainAxisAlignment:
                      //                         MainAxisAlignment.spaceAround,
                      //                     children: [
                      //                       Stack(children: [
                      //                         GestureDetector(
                      //                           onTap: () async {
                      //                             await propertyController
                      //                                 .singleListPropertiesDetails(
                      //                                     propertyController
                      //                                         .propertyList[i]
                      //                                         .propertyID);

                      //                             Get.to(
                      //                                 () => PropertyDetails());
                      //                           },
                      //                           child: Container(
                      //                             height: Utility.screenHeight(
                      //                                     context) *
                      //                                 0.18,
                      //                             width: Utility.screenWidth(
                      //                                     context) *
                      //                                 0.38,
                      //                             foregroundDecoration:
                      //                                 BoxDecoration(
                      //                               image: DecorationImage(
                      //                                   image: NetworkImage(
                      //                                       'https://xtremesproperty.com/Temp/${propertyController.propertyList[i].imageName}'),
                      //                                   fit: BoxFit.fill),
                      //                             ),
                      //                             color: Colors.blue,
                      //                           ),
                      //                         ),
                      //                         Container(
                      //                           margin: EdgeInsets.only(
                      //                             top: 2.0,
                      //                             left: 2.0,
                      //                           ),
                      //                           height: Utility.screenHeight(
                      //                                   context) *
                      //                               0.024,
                      //                           color: Colors.cyan[100],
                      //                           child: Text(
                      //                             '${propertyController.propertyList[i].price}',
                      //                             style: TextStyle(
                      //                                 color: Colors.black,
                      //                                 fontSize: 15,
                      //                                 fontWeight:
                      //                                     FontWeight.bold),
                      //                           ),
                      //                         ),
                      //                       ]),
                      //                     ]),
                      //               ),
                      //             ),
                      //     )),
                      //  ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ]),
                  ),
                ],
              ),
              GetBuilder<BannerController>(
                id: 3,
                builder: (_) => bannerController.isLoading == false
                    ? SizedBox()
                    : Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.black12.withOpacity(0.1),
                        child: Center(child: CircularProgressIndicator()),
                      ),
              ),
              GetBuilder<PropertyController>(
                  //     id: 3,
                  builder: (_) => propertyController.isLoading == true
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          color: Colors.black12.withOpacity(0.1),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      : SizedBox()),
              GetBuilder<XtremesProjectsController>(
                  //     id: 3,
                  builder: (_) => xtremesProjectsController.isLoading == true
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          color: Colors.black12.withOpacity(0.1),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      : SizedBox()),
              GetBuilder<XtremesPropertiesController>(
                  //     id: 3,
                  builder: (_) => xtremesPropertiesController.isLoading == true
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          color: Colors.black12.withOpacity(0.1),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      : SizedBox()),
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
        ));
  }
}
