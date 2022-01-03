import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/modules/properties/controller/controller.dart';
import 'package:xtremessoft/src/modules/properties/controller/properties_agents_controller.dart';
import 'package:xtremessoft/src/modules/properties/screens/details.dart';
import 'package:xtremessoft/src/modules/properties/screens/properties_agents.dart';

class AgentsProperties extends StatefulWidget {
  @override
  _AgentsPropertiesState createState() => _AgentsPropertiesState();
}

class _AgentsPropertiesState extends State<AgentsProperties> {
  PropertiesAgentsController propertiesAgentsController =
      PropertiesAgentsController();
  PropertyController propertyController = PropertyController();

  @override
  void initState() {
    propertiesAgentsController = Get.find();
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
          height: 100,
          width: 100,
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
        Container(
          margin: EdgeInsets.only(top: 10.0, right: 5.0, left: 5.0),
          child: GetBuilder<PropertiesAgentsController>(
            init: PropertiesAgentsController(),
            //      id: 2,
            //      autoRemove: false,
            builder: (_) => propertiesAgentsController.isLoading == true
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black12.withOpacity(0.1),
                    child: Center(child: CircularProgressIndicator()),
                  )
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0),
                    itemCount:
                        propertiesAgentsController.agentPropertiesList.length,
                    itemBuilder: (context, int i) => Stack(children: [
                      Column(children: [
                        GestureDetector(
                          onTap: () async {
                            print('Tapped on details of agents properties');

                            await propertyController
                                .singleListPropertiesDetails(
                                    propertiesAgentsController
                                        .agentPropertiesList[i].propertyID);

                            Get.to(() => PropertyDetails());
                          },
                          child: Container(
                            height: 140,
                            width: 250,
                            //     color: Colors.red,
                            foregroundDecoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://xtremesproperty.com/Temp/${propertiesAgentsController.agentPropertiesList[i].propertyImage}'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 250,
                          color: Colors.cyan[900],
                          child: Column(
                            children: [
                              Row(children: [
                                Text(
                                  '${propertiesAgentsController.agentPropertiesList[i].currencyType}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '${propertiesAgentsController.agentPropertiesList[i].propertyPrice}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ]),
                              Row(children: [
                                Text(
                                  'Area: ${propertiesAgentsController.agentPropertiesList[i].area}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                propertiesAgentsController
                                            .agentPropertiesList[i].bedroom ==
                                        0
                                    ? Text('')
                                    : Text(
                                        ' | beds: ${propertiesAgentsController.agentPropertiesList[i].bedroom}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                propertiesAgentsController
                                            .agentPropertiesList[i].bathroom ==
                                        0
                                    ? Text('')
                                    : Text(
                                        ' | baths: ${propertiesAgentsController.agentPropertiesList[i].bathroom}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                              ])
                            ],
                          ),
                        )
                      ]),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 3.0, left: 1.0),
                            height: 20.0,
                            color: Colors.cyan[900],
                            child: Center(
                              child: Text(
                                '${propertiesAgentsController.agentPropertiesList[i].categoryTypeName}',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
                  ),
          ),
        ),
        GetBuilder<PropertyController>(
            //id: 3,
            builder: (_) => propertyController.isLoading == true
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black12.withOpacity(0.1),
                    child: Center(child: CircularProgressIndicator()),
                  )
                : SizedBox()),
      ]),
    );
  }
}
