import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/helpers/utils/utils.dart';
import 'package:xtremessoft/src/modules/properties/controller/controller.dart';
import 'package:xtremessoft/src/modules/properties/controller/xtremes_properties_controller.dart';
import 'package:xtremessoft/src/modules/properties/models/properties_details.dart';
import 'package:xtremessoft/src/modules/properties/screens/details.dart';

class XtremesProperties extends StatefulWidget {
  @override
  _XtremesPropertiesState createState() => _XtremesPropertiesState();
}

class _XtremesPropertiesState extends State<XtremesProperties> {
  XtremesPropertiesController xtremesPropertiesController;
  PropertyController propertyController;

  int index = 1;

  @override
  void initState() {
    xtremesPropertiesController = Get.find();
    propertyController = Get.find();
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
          // color: Colors.red,
          //   child: Image.asset(''),
        ),
      ),
      body: SafeArea(
        child: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: CustomScrollView(slivers: <Widget>[
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  // childAspectRatio: 5.0,
                  // mainAxisExtent: 150.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int i) {
                    return GetBuilder<XtremesPropertiesController>(
                      //   init: PropertyController(),
                      //   id: 1,
                      builder: (_) => xtremesPropertiesController.isLoading ==
                              true
                          ? Container(
                              // width: MediaQuery.of(context).size.width,
                              // height: MediaQuery.of(context).size.height,
                              // color: Colors.black12.withOpacity(0.1),
                              // child: Center(child: CircularProgressIndicator()),
                              )
                          : Stack(children: [
                              Container(
                                //    color: Colors.black,
                                //  height: 300,
                                child: Column(children: [
                                  Stack(children: [
                                    GestureDetector(
                                      onTap: () async {
                                        print(
                                            'Tapped on xtremes property details');

                                        propertyController
                                            .singleListPropertiesDetails(
                                                '${xtremesPropertiesController.xtremesPropertiesList[i].propertyId}');

                                        Get.to(() => PropertyDetails());
                                      },
                                      child: Container(
                                        //    margin: EdgeInsets.only(top: 10.0),
                                        height: 120,
                                        //       color: Colors.red,
                                        width: Utility.screenWidth(context),
                                        foregroundDecoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://xtremesproperty.com/Temp/${xtremesPropertiesController.xtremesPropertiesList[i].imageName}'),
                                              fit: BoxFit.fill),
                                        ),
                                        //  color: Colors.blue,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        //   top: 11.0,
                                        left: 2.0,
                                      ),
                                      height:
                                          Utility.screenHeight(context) * 0.024,
                                      color: Colors.cyan[100],
                                      child: Text(
                                        '${xtremesPropertiesController.xtremesPropertiesList[i].categoryTypeName}', // '${propertyController.propertyList[i].categoryTypeName}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ]),
                                  Container(
                                    height: 70.0,
                                    //   color: Colors.green,
                                    // width: Utility.screenWidth(context),
                                    child: Column(
                                      //     mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width:
                                                  Utility.screenWidth(context) *
                                                      0.489,
                                              color: Colors.blueGrey[900],
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(top: 5.0),
                                                child: Text(
                                                  '${xtremesPropertiesController.xtremesPropertiesList[i].price}', //  '${xtremesProjectsController.xtremesProjectsList[i].currencyType} ${xtremesProjectsController.xtremesProjectsList[i].startPrice} TO ${xtremesProjectsController.xtremesProjectsList[i].endPrice}',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),

                                        //     Text('This is text')
                                        // Container(
                                        //   color: Colors.blue,
                                        //   child: Row(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.start,
                                        //     children: [
                                        Column(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              //     color: Colors.black,
                                              margin: EdgeInsets.only(top: 5.0),
                                              padding:
                                                  EdgeInsets.only(right: 45.0),
                                              //    color: Colors.red,
                                              child: Row(children: [
                                                Container(
                                                  width: Utility.screenWidth(
                                                          context) *
                                                      0.371,
                                                  child: Text(
                                                    '${xtremesPropertiesController.xtremesPropertiesList[i].title}',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ]),
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  //  Text(''),
                                                  Text(
                                                    'Area: ${xtremesPropertiesController.xtremesPropertiesList[i].area}',
                                                    // 'Area: ${propertiesAgentsController.agentPropertiesList[i].area}',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  xtremesPropertiesController
                                                              .xtremesPropertiesList[
                                                                  i]
                                                              .bedroom ==
                                                          0
                                                      ? Text('')
                                                      : Text(
                                                          '| beds: ${xtremesPropertiesController.xtremesPropertiesList[i].bedroom}',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                  xtremesPropertiesController
                                                              .xtremesPropertiesList[
                                                                  i]
                                                              .bathroom ==
                                                          0
                                                      ? Text('')
                                                      : Text(
                                                          '| baths: ${xtremesPropertiesController.xtremesPropertiesList[i].bathroom}',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                ])
                                          ],
                                        )
                                        //     ],
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                    );

                    // Text(
                    //     '${xtremesPropertiesController.xtremesPropertiesList[i].area}');
                    // childCount: 2,
                    //  xtremesPropertiesController.xtremesPropertiesList.length,
                  },
                  childCount:
                      xtremesPropertiesController.xtremesPropertiesList.length,
                ),
              ),
              SliverToBoxAdapter(
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    print('Tapped on Load More');

                    index++;
                    xtremesPropertiesController.getPropertiesData(index);
                  },
                  child: Container(
                      // margin: EdgeInsets.only(top: 50.0),
                      height: 30.0,
                      width: 120.0,
                      color: Colors.red,
                      child: Center(child: Text('Load more'))),
                )),
              ),
            ]),
          ),
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
        ]),
      ),
    );
  }
}
