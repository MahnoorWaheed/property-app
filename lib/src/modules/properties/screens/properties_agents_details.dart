import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/modules/properties/controller/properties_agents_controller.dart';
import 'package:xtremessoft/src/modules/properties/screens/agents_properties.dart';

class PropertiesAgentsDetails extends StatefulWidget {
  @override
  _PropertiesAgentsDetailsState createState() =>
      _PropertiesAgentsDetailsState();
}

class _PropertiesAgentsDetailsState extends State<PropertiesAgentsDetails> {
  PropertiesAgentsController propertiesAgentsController =
      PropertiesAgentsController();

  @override
  void initState() {
    propertiesAgentsController = Get.find();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.cyan[900],
      //   //centerTitle: true,
      //   title: Container(
      //     // height: 80,
      //     // width: 150,
      //     child: Text('Agents'),
      //     //  color: Colors.red,
      //     //   child: Image.asset(''),
      //   ),
      // ),
      backgroundColor: Colors.cyan[900],
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Row(children: [
                GestureDetector(
                  onTap: () {
                    print('Tapped on back arrow');
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ]),
              Container(
                margin: EdgeInsets.only(left: 20.0),
                height: 150.0,
                width: double.infinity,
                //  color: Colors.red,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://xtremesproperty.com/Temp/${propertiesAgentsController.agentDetailsData.imageName}'),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${propertiesAgentsController.agentDetailsData.name}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ),
                            Text(
                              'Real Estate Broker',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.white),
                            ),
                            Text(
                              '${propertiesAgentsController.agentDetailsData.description}',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () async {
                    print('Tapped on agents properties');
                    await propertiesAgentsController.getAgentsProperties(
                        1, propertiesAgentsController.agentDetailsData.agentID);

                    Get.to(() => AgentsProperties());
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 15.0),
                    height: 40.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.cyan[400],
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(
                      child: Text(
                        'View Properties',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                        Text(
                          '${propertiesAgentsController.agentDetailsData.email}',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Phone:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                        Text(
                          '${propertiesAgentsController.agentDetailsData.phoneNo}',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gender:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                        Text(
                          '${propertiesAgentsController.agentDetailsData.gender}',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'City:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                        Container(
                          //    color: Colors.red,
                          width: 250,
                          child: Center(
                            child: Text(
                              '${propertiesAgentsController.agentDetailsData.address}',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.white54),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'DOB:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                        Text(
                          '24/5/1995',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Account created:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                        Text(
                          '${propertiesAgentsController.agentDetailsData.createdDate}',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       'Email:',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 18.0,
                    //           color: Colors.white),
                    //     ),
                    //     Text(
                    //       'mujeeb32@gmail.com',
                    //       style:
                    //           TextStyle(fontSize: 15.0, color: Colors.white54),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
          GetBuilder<PropertiesAgentsController>(
            //    id: 3,
            builder: (_) => propertiesAgentsController.isLoading == false
                ? SizedBox()
                : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black12.withOpacity(0.1),
                    child: Center(child: CircularProgressIndicator()),
                  ),
          ),
        ]),
      ),
    );
  }
}
