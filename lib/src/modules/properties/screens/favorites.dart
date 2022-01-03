import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/helpers/utils/utils.dart';
import 'package:xtremessoft/src/modules/properties/controller/controller.dart';
import 'package:xtremessoft/src/modules/properties/screens/details.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  PropertyController propertyController = PropertyController();

  @override
  void initState() {
    propertyController = Get.find();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Container(
                foregroundDecoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage('assets/icons/updatedlogo.png'),
                      fit: BoxFit.fill),
                ),
                color: Colors.red,
                //   child: Image.asset(''),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              // onTap: () {
              //   Navigator.pop(context);
              // },
            ),
            ListTile(
              title: Text('Item 2'),
              // onTap: () {
              //   Navigator.pop(context);
              // },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(children: [
              Container(
                  margin: EdgeInsets.only(top: 50.0),
                  height: Utility.screenHeight(context) * 0.785,
                  color: Colors.cyan[900],
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Liked Property',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('tapped on liked property');
                              Get.to(() => PropertyDetails());
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 5.0),
                              height: Utility.screenHeight(context) * 0.18,
                              width: Utility.screenWidth(context) * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height:
                                        Utility.screenHeight(context) * 0.13,
                                    width: Utility.screenWidth(context) * 0.29,
                                    color: Colors.blue,
                                    foregroundDecoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2020/12/25/907391-housing-pixabat.jpg'),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                '2145000',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                //   color: Colors.red,
                                                height: Utility.screenHeight(
                                                        context) *
                                                    0.06,
                                                width: 50,
                                              ),
                                              Text(
                                                '3 Beds 4 Baths',
                                                style: TextStyle(
                                                    color: Colors.grey[600]),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('Tapped on favorite icon');
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      size: 50.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('tapped on liked property');
                              Get.to(() => PropertyDetails());
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 5.0),
                              height: Utility.screenHeight(context) * 0.18,
                              width: Utility.screenWidth(context) * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height:
                                        Utility.screenHeight(context) * 0.13,
                                    width: Utility.screenWidth(context) * 0.29,
                                    color: Colors.blue,
                                    foregroundDecoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2020/12/25/907391-housing-pixabat.jpg'),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                '2145000',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                //   color: Colors.red,
                                                height: Utility.screenHeight(
                                                        context) *
                                                    0.06,
                                                width: 50,
                                              ),
                                              Text(
                                                '3 Beds 4 Baths',
                                                style: TextStyle(
                                                    color: Colors.grey[600]),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    size: 50.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('tapped on liked property');
                              Get.to(() => PropertyDetails());
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 5.0),
                              height: Utility.screenHeight(context) * 0.18,
                              width: Utility.screenWidth(context) * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height:
                                        Utility.screenHeight(context) * 0.13,
                                    width: Utility.screenWidth(context) * 0.29,
                                    color: Colors.blue,
                                    foregroundDecoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2020/12/25/907391-housing-pixabat.jpg'),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                '2145000',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                //   color: Colors.red,
                                                height: Utility.screenHeight(
                                                        context) *
                                                    0.06,
                                                width: 50,
                                              ),
                                              Text(
                                                '3 Beds 4 Baths',
                                                style: TextStyle(
                                                    color: Colors.grey[600]),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    size: 50.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ]),
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
          ],
        ),
      ),
    );
  }
}
