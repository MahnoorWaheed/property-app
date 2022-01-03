import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/helpers/utils/utils.dart';
import 'package:xtremessoft/src/modules/properties/controller/banner_controller.dart';
import 'package:xtremessoft/src/modules/properties/controller/controller.dart';
import 'package:xtremessoft/src/modules/properties/screens/index.dart';

class BannerDetails extends StatefulWidget {
  @override
  _BannerDetailsState createState() => _BannerDetailsState();
}

class _BannerDetailsState extends State<BannerDetails> {
  PropertyController propertyController = PropertyController();
  BannerController bannerController = BannerController();

  @override
  void initState() {
    propertyController = Get.find();
    bannerController = Get.find();
//    propertyController.propertiesDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: SafeArea(
          child: GetBuilder<PropertyController>(
        builder: (_) => propertyController.isLoading == true
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black12.withOpacity(0.1),
                child: Center(child: CircularProgressIndicator()),
              )
            : ListView(children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      // color: Colors.red,
                      height: Utility.screenHeight(context) * 0.4,
                      width: Utility.screenWidth(context) * 0.94,
                      foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://xtremesproperty.com/Temp/${propertyController.bannerDetailsList[0].imageName}'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      color: Colors.brown[800],
                      height: Utility.screenHeight(context) * 0.07,
                      width: Utility.screenWidth(context) * 0.94,
                      child: Row(children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${propertyController.bannerDetailsList[0].title}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Bedrooms: ${propertyController.bannerDetailsList[0].bedroom} Baths: ${propertyController.bannerDetailsList[0].bathroom}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      height: Utility.screenHeight(context) * 0.06,
                      width: Utility.screenWidth(context) * 0.24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.green,
                        border: Border.all(color: Colors.brown),
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'BUY NOW',
                            style: TextStyle(
                                color: Colors.brown[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0),
                            //    color: Colors.red,
                            // height: 85,
                            width: 350.0,
                            child: Text(
                              '${propertyController.bannerDetailsList[0].description}',
                              //'Property title: ${propertyController.banner.title} ',
                            ),
                          ),

                          // Text(
                          //   'Details ',
                          //   //  'Agent Name: ${propertyController.banner.agentName}',
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.bold, fontSize: 20.0),
                          // ),
                          // Container(
                          //   margin: EdgeInsets.only(left: 5.0, right: 5.0),
                          //   height: 150,
                          //   width: double.infinity,
                          //   // color: Colors.red,
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //     //   crossAxisAlignment: CrossAxisAlignment.stretch,
                          //     children: [
                          //       Container(
                          //         color: Colors.grey[350],
                          //         child: Row(
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceBetween,
                          //           children: [
                          //             Text('Title'),
                          //             Text(
                          //                 '${propertyController.bannerDetailsList[0].title}'),
                          //           ],
                          //         ),
                          //       ),
                          //       Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Text('Garage'),
                          //           Text(
                          //               '${propertyController.bannerDetailsList[0].garage}'),
                          //         ],
                          //       ),
                          //       Container(
                          //         color: Colors.grey[350],
                          //         child: Row(
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceBetween,
                          //           children: [
                          //             Text('Hall'),
                          //             Text(
                          //                 '${propertyController.bannerDetailsList[0].hall}'),
                          //           ],
                          //         ),
                          //       ),
                          //       Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Text('Kitchen'),
                          //           Text(
                          //               '${propertyController.bannerDetailsList[0].kitchen}'),
                          //         ],
                          //       ),
                          //       Container(
                          //         color: Colors.grey[350],
                          //         child: Row(
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceBetween,
                          //           children: [
                          //             Text('Floors'),
                          //             Text(
                          //                 '${propertyController.bannerDetailsList[0].floors}'),
                          //           ],
                          //         ),
                          //       ),
                          //       Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Text('City'),
                          //           Text(
                          //               '${propertyController.bannerDetailsList[0].cityName}'),
                          //         ],
                          //       ),
                          //       Container(
                          //         color: Colors.grey[350],
                          //         child: Row(
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceBetween,
                          //           children: [
                          //             Text('Location'),
                          //             Text(
                          //                 '${propertyController.bannerDetailsList[0].locationName}'),
                          //           ],
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Text(
                            'Main Features ',
                            //  'Agent Name: ${propertyController.banner.agentName}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0, right: 5.0),
                            height: 50,
                            width: double.infinity,
                            //    color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //   crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  //    color: Colors.grey[350],
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      propertyController.bannerDetailsList[0]
                                                  .mainFeaturesElectricityBackup ==
                                              '1'
                                          ? Row(children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Image(
                                                    image: AssetImage(
                                                        'assets/icons/electricity.png')),
                                              ),
                                              Text('Electricity Backup')
                                            ])
                                          : SizedBox()
                                    ],
                                  ),
                                ),
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Text('Internet'),
                                //     Text(
                                //         '${propertyController.bannerDetailsList[0].mainFeaturesInternetAccess}'),
                                //   ],
                                // ),
                                // Container(
                                //   color: Colors.grey[350],
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Text('TV Cable'),
                                //       Text(
                                //           '${propertyController.bannerDetailsList[0].mainFeaturesSatelliteORCableTV}'),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Text(
                            'Nearby Locations & Other Facilities ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0, right: 5.0),
                            height: 150,
                            width: double.infinity,
                            //  color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //   crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                    //  color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .nearbySchool !=
                                            null
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Image(
                                                    image: AssetImage(
                                                        'assets/icons/school.png')),
                                              ),
                                              Text(
                                                  ' Nearby School: ${propertyController.bannerDetailsList[0].nearbySchool}')
                                            ],
                                          )
                                        : Center(
                                            child: Text('No data found'),
                                          )

                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                                Container(
                                    //  color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .nearbyHospital !=
                                            null
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Image(
                                                    image: AssetImage(
                                                        'assets/icons/hospital.png')),
                                              ),
                                              Text(
                                                  ' Nearby Hospital: ${propertyController.bannerDetailsList[0].nearbyHospital}')
                                            ],
                                          )
                                        : SizedBox()

                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                                Container(
                                    //  color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .nearbyShoppingMall !=
                                            null
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Image(
                                                    image: AssetImage(
                                                        'assets/icons/shoppingmall.png')),
                                              ),
                                              Text(
                                                  ' Nearby Shopping Malls: ${propertyController.bannerDetailsList[0].nearbyShoppingMall}')
                                            ],
                                          )
                                        : SizedBox()

                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                                Container(
                                    //  color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .neabyRestaurant !=
                                            null
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Image(
                                                    image: AssetImage(
                                                        'assets/icons/resturant.png')),
                                              ),
                                              Text(
                                                  ' Nearby Restaurant: ${propertyController.bannerDetailsList[0].neabyRestaurant}')
                                            ],
                                          )
                                        : SizedBox()
                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                                Container(
                                    //   color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .nearbyPublicTransportService !=
                                            null
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Image(
                                                    image: AssetImage(
                                                        'assets/icons/transport.png')),
                                              ),
                                              Text(
                                                  ' Nearby Transport Service: ${propertyController.bannerDetailsList[0].nearbyPublicTransportService}')
                                            ],
                                          )
                                        : SizedBox()

                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                                Container(
                                    //   color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .otherNearbyPlace !=
                                            null
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Icon(Icons.more_horiz),
                                              ),
                                              Text(
                                                  ' Nearby Other Places: ${propertyController.bannerDetailsList[0].otherNearbyPlace}')
                                            ],
                                          )
                                        : SizedBox()

                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                              ],
                            ),
                          ),
                          Text(
                            'Business and Communication',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Container(
                              //   color: Colors.grey[350],
                              child: propertyController.bannerDetailsList[0]
                                          .mainFeaturesInternetAccess ==
                                      '1'
                                  ? Row(
                                      //      mainAxisAlignment:
                                      //    MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/icons/world.png')),
                                        ),
                                        Text(' Internet Access')
                                      ],
                                    )
                                  : SizedBox()

                              // Text('Schools'),
                              // Text(
                              //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                              ),
                          Container(
                              margin: EdgeInsets.only(top: 3.0),
                              //   color: Colors.grey[350],
                              child: propertyController.bannerDetailsList[0]
                                          .mainFeaturesSatelliteORCableTV ==
                                      '1'
                                  ? Row(
                                      //      mainAxisAlignment:
                                      //    MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/icons/cable-tv.png')),
                                        ),
                                        Text(' Cable TV Ready')
                                      ],
                                    )
                                  : SizedBox()

                              // Text('Schools'),
                              // Text(
                              //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                              ),
                          Text(
                            'Other Facilities',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0, right: 5.0),
                            height: 50,
                            width: double.infinity,
                            //   color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //   crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                    //   color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .maintenanceStaff ==
                                            '1'
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Image(
                                                    image: AssetImage(
                                                        'assets/icons/maintenance.png')),
                                              ),
                                              Text(' Maintenance Staff')
                                            ],
                                          )
                                        : SizedBox()

                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                                Container(
                                    margin: EdgeInsets.only(top: 3.0),
                                    //   color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .securityStaff ==
                                            '1'
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  height: 20.0,
                                                  width: 20.0,
                                                  child: Icon(Icons.security)),
                                              Text(' Security Staff')
                                            ],
                                          )
                                        : SizedBox()

                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                              ],
                            ),
                          ),

                          Text(
                            'Healthcare Recreational',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0, right: 5.0),
                            height: 50,
                            width: double.infinity,
                            //   color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //   crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                    //   color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .lawnorGarden ==
                                            '1'
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Image(
                                                    image: AssetImage(
                                                        'assets/icons/grass.png')),
                                              ),
                                              Text(' Lawn or Garden')
                                            ],
                                          )
                                        : SizedBox()

                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                                Container(
                                    margin: EdgeInsets.only(top: 3.0),
                                    //   color: Colors.grey[350],
                                    child: propertyController
                                                .bannerDetailsList[0]
                                                .swimmingPool ==
                                            '1'
                                        ? Row(
                                            //      mainAxisAlignment:
                                            //    MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/icons/swimming-pool.png'),
                                                ),
                                              ),
                                              Text(' Swimming Pool')
                                            ],
                                          )
                                        : SizedBox()

                                    // Text('Schools'),
                                    // Text(
                                    //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                    ),
                              ],
                            ),
                          ),
                          Text(
                            'Plot Features',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0, right: 5.0),
                            height: 100,
                            width: double.infinity,
                            //   color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //   crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          //   color: Colors.grey[350],
                                          child: propertyController
                                                      .bannerDetailsList[0]
                                                      .plotPossesion ==
                                                  '1'
                                              ? Row(
                                                  //      mainAxisAlignment:
                                                  //    MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Image(
                                                          image: AssetImage(
                                                              'assets/icons/possesion.png')),
                                                    ),
                                                    Text(' Possesion')
                                                  ],
                                                )
                                              : SizedBox()

                                          // Text('Schools'),
                                          // Text(
                                          //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                          ),
                                      Container(
                                          margin: EdgeInsets.only(top: 3.0),
                                          //   color: Colors.grey[350],
                                          child: propertyController
                                                      .bannerDetailsList[0]
                                                      .securityStaff ==
                                                  '1'
                                              ? Row(
                                                  //      mainAxisAlignment:
                                                  //    MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Image(
                                                          image: AssetImage(
                                                              'assets/icons/parkFacing.png')),
                                                    ),
                                                    Text(' Park Facing')
                                                  ],
                                                )
                                              : SizedBox()

                                          // Text('Schools'),
                                          // Text(
                                          //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                          ),
                                      Container(
                                          margin: EdgeInsets.only(top: 3.0),
                                          //   color: Colors.grey[350],
                                          child: propertyController
                                                      .bannerDetailsList[0]
                                                      .securityStaff ==
                                                  '1'
                                              ? Row(
                                                  //      mainAxisAlignment:
                                                  //    MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Image(
                                                          image: AssetImage(
                                                              'assets/icons/corner.png')),
                                                    ),
                                                    Text(' Corner')
                                                  ],
                                                )
                                              : SizedBox()

                                          // Text('Schools'),
                                          // Text(
                                          //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                          ),
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          //   color: Colors.grey[350],
                                          child: propertyController
                                                      .bannerDetailsList[0]
                                                      .plotSewerage ==
                                                  '1'
                                              ? Row(
                                                  //      mainAxisAlignment:
                                                  //    MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Image(
                                                          image: AssetImage(
                                                              'assets/icons/Sewerage.png')),
                                                    ),
                                                    Text(' Sewerage')
                                                  ],
                                                )
                                              : SizedBox()

                                          // Text('Schools'),
                                          // Text(
                                          //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                          ),
                                      Container(
                                          margin: EdgeInsets.only(top: 3.0),
                                          //   color: Colors.grey[350],
                                          child: propertyController
                                                      .bannerDetailsList[0]
                                                      .plotElectricity ==
                                                  '1'
                                              ? Row(
                                                  //      mainAxisAlignment:
                                                  //    MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Image(
                                                          image: AssetImage(
                                                              'assets/icons/electricity.png')),
                                                    ),
                                                    Text(' Electricity')
                                                  ],
                                                )
                                              : SizedBox()

                                          // Text('Schools'),
                                          // Text(
                                          //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                          ),
                                      Container(
                                          margin: EdgeInsets.only(top: 3.0),
                                          //   color: Colors.grey[350],
                                          child: propertyController
                                                      .bannerDetailsList[0]
                                                      .plotWaterSupply ==
                                                  '1'
                                              ? Row(
                                                  //      mainAxisAlignment:
                                                  //    MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Image(
                                                          image: AssetImage(
                                                              'assets/icons/WaterSupply.png')),
                                                    ),
                                                    Text(' Water Supply')
                                                  ],
                                                )
                                              : SizedBox()

                                          // Text('Schools'),
                                          // Text(
                                          //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                          ),
                                    ]),
                                Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          //   color: Colors.grey[350],
                                          child: propertyController
                                                      .bannerDetailsList[0]
                                                      .plotSuiGas ==
                                                  '1'
                                              ? Row(
                                                  //      mainAxisAlignment:
                                                  //    MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Image(
                                                          image: AssetImage(
                                                              'assets/icons/suiGas.png')),
                                                    ),
                                                    Text(' Sui Gas')
                                                  ],
                                                )
                                              : SizedBox()

                                          // Text('Schools'),
                                          // Text(
                                          //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                          ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(top: 3.0),
                                          //   color: Colors.grey[350],
                                          child: propertyController
                                                      .bannerDetailsList[0]
                                                      .plotBoundaryWall ==
                                                  '1'
                                              ? Row(
                                                  //      mainAxisAlignment:
                                                  //    MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Image(
                                                          image: AssetImage(
                                                              'assets/icons/BoundaryWall.png')),
                                                    ),
                                                    Text(' Boundary Wall')
                                                  ],
                                                )
                                              : SizedBox()

                                          // Text('Schools'),
                                          // Text(
                                          //     '${propertyController.bannerDetailsList[0].nearbySchool}'),

                                          ),
                                    ]),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Floor Plan ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Container(
                            height: 250.0,
                            // color: Colors.red,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: bannerController.floorPlanList.length,

                              itemBuilder: (context, int i) => Container(
                                margin: EdgeInsets.only(left: 5.0),
                                width: 380.0,
                                foregroundDecoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          //  '',
                                          'https://xtremesproperty.com/Temp/${bannerController.floorPlanList[i].title}'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              // SizedBox(
                              //   width: 5.0,
                              // ),
                              // Container(
                              //   width: 380.0,
                              //   foregroundDecoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image: NetworkImage(
                              //             'https://xtremesproperty.com/Temp/${bannerController.floorPlanList[1].title}'),
                              //         fit: BoxFit.fill),
                              //   ),
                              // ),
                              // SizedBox(
                              //   width: 5.0,
                              // ),
                              // Container(
                              //   width: 380.0,
                              //   foregroundDecoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image: NetworkImage(
                              //             //  '',
                              //             'https://xtremesproperty.com/Temp/${bannerController.floorPlanList[2].title}'),
                              //         fit: BoxFit.fill),
                              //   ),
                              // ),
                            ),
                          ),
                          Text(
                            'Payment Plan: ',
                            //  'Agent Name: ${propertyController.banner.agentName}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Container(
                            height: 250.0,
                            // color: Colors.red,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  bannerController.paymentPlanList.length,
                              itemBuilder: (context, int i) => Container(
                                margin: EdgeInsets.only(left: 5.0),
                                width: 380.0,
                                foregroundDecoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          //  '',
                                          bannerController.paymentPlanList[0]
                                                      .paymentPlanImage ==
                                                  null
                                              ? 'No Image found'
                                              : 'https://xtremesproperty.com/Temp/${bannerController.paymentPlanList[i].paymentPlanImage}'),
                                      fit: BoxFit.fill),
                                ),
                              ),

                              // SizedBox(
                              //   width: 5.0,
                              // ),
                              // Container(
                              //   width: 380.0,
                              //   foregroundDecoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image: NetworkImage(
                              //             //  '',
                              //             bannerController.paymentPlanList[1]
                              //                         .paymentPlanImage ==
                              //                     null
                              //                 ? ''
                              //                 : 'https://xtremesproperty.com/Temp/${bannerController.paymentPlanList[1].paymentPlanImage}'),
                              //         fit: BoxFit.fill),
                              //   ),
                              // ),
                              // SizedBox(
                              //   width: 5.0,
                              // ),
                              // Container(
                              //   width: 380.0,
                              //   foregroundDecoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image: NetworkImage(
                              //             //  '',
                              //             bannerController.paymentPlanList[2]
                              //                         .paymentPlanImage ==
                              //                     null
                              //                 ? ''
                              //                 : 'https://xtremesproperty.com/Temp/${bannerController.paymentPlanList[2].paymentPlanImage}'),
                              //         fit: BoxFit.fill),
                              //   ),
                              // ),
                            ),
                          )
                        ])
                  ],
                ),
              ]),
      )

          // Center(
          //   child: Stack(children: [
          //     Column(
          //       children: [
          //         Container(
          //           // margin: EdgeInsets.only(top: 30.0),
          //           height: 300,
          //           color: Colors.red,
          //         )
          //       ],
          //     ),
          //     Positioned(
          //       child: Container(
          //         //  color: Colors.red,
          //         height: Utility.screenHeight(context) * 0.1,
          //         width: Utility.screenWidth(context) * 0.6,
          //         child: AppBar(
          //           title: Container(
          //             height: 100,
          //             // width: 50,
          //             foregroundDecoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage('assets/icons/updatedlogo.png'),
          //                   fit: BoxFit.fill),
          //             ),
          //             // color: Colors.red,
          //             //   child: Image.asset(''),
          //           ),
          //           backgroundColor: Colors.transparent,
          //           elevation: 0,
          //           iconTheme: IconThemeData(color: Colors.black),
          //         ),
          //       ),
          //     ),
          //   ]),
          // ),
          ),
    );
  }
}
