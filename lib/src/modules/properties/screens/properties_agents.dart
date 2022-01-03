import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/helpers/utils/utils.dart';
import 'package:xtremessoft/src/modules/properties/controller/properties_agents_controller.dart';
import 'package:xtremessoft/src/modules/properties/screens/properties_agents_details.dart';

class PropertiesAgents extends StatefulWidget {
  @override
  _PropertiesAgentsState createState() => _PropertiesAgentsState();
}

class _PropertiesAgentsState extends State<PropertiesAgents> {
  PropertiesAgentsController propertiesAgentsController;

  @override
  void initState() {
    propertiesAgentsController = Get.put(PropertiesAgentsController());
    propertiesAgentsController.loadAgentData();
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
      body: Stack(children: [
        Center(
          child: Column(
            children: [
              GetBuilder<PropertiesAgentsController>(
                init: PropertiesAgentsController(),
                //  id: 4,
                builder: (_) => Container(
                  //   color: Colors.red,
                  height: Utility.screenHeight(context) * 0.8,
                  child: propertiesAgentsController.isLoading == true
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          color: Colors.black12.withOpacity(0.1),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      : ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount:
                              propertiesAgentsController.agentListData.length,
                          itemBuilder: (context, int i) => GestureDetector(
                            onTap: () async {
                              print('Tapped on agent details');
                              await propertiesAgentsController.loadAgentByID(
                                  propertiesAgentsController
                                      .agentListData[i].agentID);

                              Get.to(() => PropertiesAgentsDetails());
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20.0),
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0),
                                  //       border: Border.all(color: Colors.black),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      offset: Offset(0, 0),
                                      blurRadius: 15.0,
                                      spreadRadius: 8.0,
                                    )
                                  ]),
                              child: ListTile(
                                //  dense: true,
                                //selected: true,
                                leading: CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://xtremesproperty.com/Temp/${propertiesAgentsController.agentListData[i].imageName}'),
                                ),
                                title: Row(
                                  children: [
                                    Container(
                                      width: 90.0,
                                      child: Text(
                                        '${propertiesAgentsController.agentListData[i].name}',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.cyan[900]),
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${propertiesAgentsController.agentListData[i].phoneNo}',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 13.0, color: Colors.black),
                                    ),
                                    Text(
                                      '${propertiesAgentsController.agentListData[i].email}',
                                      //     overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 13.0, color: Colors.black),
                                    ),
                                  ],
                                ),
                                trailing: Container(
                                  width: 120,
                                  //  color: Colors.red,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Center(
                                            child: Text(
                                          '${propertiesAgentsController.agentListData[i].totalproperty} properties',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.cyan[900]),
                                        )),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                ),
              ),
              //),

              // Container(
              //   margin: EdgeInsets.only(top: 20.0),
              //   height: 80,
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(15.0),
              //       //       border: Border.all(color: Colors.black),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Color.fromRGBO(0, 0, 0, 0.3),
              //           offset: Offset(0, 0),
              //           blurRadius: 15.0,
              //           spreadRadius: 8.0,
              //         )
              //       ]),
              //   child: ListTile(
              //     hoverColor: Colors.green,
              //     //  dense: true,
              //     //    selected: true,
              //     leading: CircleAvatar(
              //       radius: 30.0,
              //     ),
              //     title: Row(
              //       children: [
              //         Container(
              //           width: 90.0,
              //           child: Text(
              //             'Mujeeb ahmad khann',
              //             overflow: TextOverflow.ellipsis,
              //             style: TextStyle(
              //                 fontSize: 18.0,
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.cyan[900]),
              //           ),
              //         ),
              //       ],
              //     ),
              //     subtitle: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           '03124561201',
              //           overflow: TextOverflow.ellipsis,
              //           style: TextStyle(fontSize: 13.0, color: Colors.black),
              //         ),
              //         Text(
              //           'aftabahmadkhan@gmail.com',
              //           //     overflow: TextOverflow.ellipsis,
              //           style: TextStyle(fontSize: 13.0, color: Colors.black),
              //         )
              //       ],
              //     ),
              //     trailing: Container(
              //       width: 170,
              //       //  color: Colors.red,
              //       child:
              //           Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              //         Center(
              //             child: Text(
              //           '30 Properties',
              //           style: TextStyle(
              //               fontSize: 15.0,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.cyan[900]),
              //         )),
              //       ]),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        // GetBuilder<PropertiesAgentsController>(
        //   builder: (_) => propertiesAgentsController.isLoading == false
        //       ? SizedBox()
        //       :
        // ),
      ]),
    );
  }
}
