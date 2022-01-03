import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/helpers/utils/utils.dart';
import 'package:xtremessoft/src/modules/properties/controller/xtremes_projects_controller.dart';

class XtremesProjects extends StatefulWidget {
  @override
  _XtremesProjectsState createState() => _XtremesProjectsState();
}

class _XtremesProjectsState extends State<XtremesProjects> {
  XtremesProjectsController xtremesProjectsController =
      XtremesProjectsController();

  @override
  void initState() {
    xtremesProjectsController = Get.find();
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
      body: Column(
        children: [
          Container(
            height: Utility.screenHeight(context) * 0.84,
            width: Utility.screenWidth(context),
            // color: Colors.red,
            child: GetBuilder<XtremesProjectsController>(
                //   init: PropertyController(),
                //   id: 1,
                builder: (_) => Container(
                      // color: Colors.black12.withOpacity(0.1),
                      height: Utility.screenHeight(context) * 0.38,
                      // color: Colors.red,
                      child: xtremesProjectsController.isLoading == true
                          ? Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              color: Colors.black12.withOpacity(0.1),
                              child: Center(child: CircularProgressIndicator()),
                            )
                          : ListView.builder(
                              itemCount: xtremesProjectsController
                                  .xtremesProjectsList.length,
                              itemBuilder: (context, int i) =>
                                  Column(children: [
                                Stack(children: [
                                  GestureDetector(
                                    onTap: () async {},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10.0),
                                      height: 250,
                                      width: Utility.screenWidth(context),
                                      foregroundDecoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://xtremesproperty.com/Temp/${xtremesProjectsController.xtremesProjectsList[i].imageName}'),
                                            fit: BoxFit.fill),
                                      ),
                                      //  color: Colors.blue,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 11.0,
                                      left: 2.0,
                                    ),
                                    height:
                                        Utility.screenHeight(context) * 0.024,
                                    color: Colors.cyan[100],
                                    child: Text(
                                      'Featured', // '${propertyController.propertyList[i].categoryTypeName}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                                Container(
                                  height: 80.0,
                                  width: Utility.screenWidth(context),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: Utility.screenWidth(context),
                                            color: Colors.blueGrey[900],
                                            child: Container(
                                              margin: EdgeInsets.only(top: 5.0),
                                              child: Text(
                                                '${xtremesProjectsController.xtremesProjectsList[i].currencyType} ${xtremesProjectsController.xtremesProjectsList[i].startPrice} TO ${xtremesProjectsController.xtremesProjectsList[i].endPrice}',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),

                                      //     Text('This is text')
                                      Row(
                                        children: [
                                          Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 5.0),
                                                padding: EdgeInsets.only(
                                                    right: 45.0),
                                                //    color: Colors.red,
                                                child: Row(children: [
                                                  Text(
                                                    '${xtremesProjectsController.xtremesProjectsList[i].title}',
                                                    style: TextStyle(
                                                        color: Colors.blue[400],
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ]),
                                              ),
                                              Row(children: [
                                                Text(
                                                  'Location: ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  ' ${xtremesProjectsController.xtremesProjectsList[i].locationName}',
                                                  style: TextStyle(
                                                      color: Colors.green[400],
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ])
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),

                              // Container(
                              //   margin: EdgeInsets.only(top: 10.0),
                              //   height: 280,
                              //   width: Utility.screenWidth(context),
                              //   color: Colors.green,
                              // ),
                              // Container(
                              //   margin: EdgeInsets.only(top: 10.0),
                              //   height: 280,
                              //   width: Utility.screenWidth(context),
                              //   color: Colors.green,
                              // ),
                              // Container(
                              //   margin: EdgeInsets.only(top: 10.0),
                              //   height: 280,
                              //   width: Utility.screenWidth(context),
                              //   color: Colors.green,
                              // )
                            ),
                    )),
          )
        ],
      ),
    );
  }
}
