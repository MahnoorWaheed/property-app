import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:xtremessoft/src/modules/properties/models/agent_details_model.dart';
import 'package:xtremessoft/src/modules/properties/models/agents_properties_model.dart';
import 'package:xtremessoft/src/modules/properties/models/properties_agents_model.dart';
import 'package:xtremessoft/src/modules/properties/screens/agents_properties.dart';

class PropertiesAgentsController extends GetxController {
  List<AgentsModel> agentListData;
  List<AgentsPropertiesModel> agentPropertiesList;

  AgentDetailsModel agentDetailsData;
  bool isLoading = false;

  Future<void> loadAgentData() async {
    print('INSIDE LOAD AGENTS DATA');
    isLoading = true;
    update();

    Map<String, dynamic> agentData = ({
      'type': 'SelectTopAgentForWebsite',
    });

    try {
      final agentDataResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: agentData);

      var agentDataResponseDecode = jsonDecode(agentDataResponse.body);

      var agentDataFinalDecode = jsonDecode(agentDataResponseDecode['Value']);

      agentListData = (agentDataFinalDecode as List)
          .map((i) => AgentsModel.fromJson(i))
          .toList();

      isLoading = false;
      update();
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;
      update();
    }
  }

  Future<void> loadAgentByID(String id) async {
    print('INSIDE LAODAGENTBYID:::::::::::::: $id');
    isLoading = true;
    update();

    final agentID = id;
    Map<String, dynamic> paymentPlan =
        ({'type': 'getagentbyid', 'value': '{ id:${jsonEncode(agentID)}}'});

    try {
      final agentsDetailsResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: paymentPlan);

      var agentsDetialsResponseDecode =
          await jsonDecode(agentsDetailsResponse.body);

      var agentsDetialsFinalDecode =
          await jsonDecode(agentsDetialsResponseDecode['Value']);

      log('RESPONSE OF AGENTS DETAILS::::::::::::: $agentsDetialsFinalDecode');

      agentDetailsData = AgentDetailsModel.fromJson(agentsDetialsFinalDecode);

      // agentDetailsListData =

      // (agentsDetialsFinalDecode as List)
      //     .map((i) => AgentDetailsModel.fromJson(i))
      //     .toList();

      isLoading = false;
      update();

      print('LENGTH OF AGENTS DATA::::: ${agentDetailsData}');
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;
      update();
    }
  }

  Future<void> getAgentsProperties(int index, String id) async {
    print('INSIDE getAgentsProperties');
    isLoading = true;
    update();

    print('INDEX IS:::::::::: $index, AGENT ID IS:::::::: $id');

    String agentID, categoryTypeId = '3105CF76-4371-4E07-BA86-6235859D61F6';
    int pageIndex, pageSize = 12;

    pageIndex = index;
    agentID = id;

    Map<String, dynamic> agentsProperties = ({
      'type': 'getagentpropertiesbyid',
      'value':
          '{ CategoryTypeId:${jsonEncode(categoryTypeId)},agentID: ${jsonEncode(agentID)},   pageIndex: $pageIndex, pageSize: $pageSize  }'
    });
    try {
      final agentsPropertiesDetailsResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: agentsProperties);

      var agentsPropertiesDetialsResponseDecode =
          await jsonDecode(agentsPropertiesDetailsResponse.body);

      var agentsPropertiesDetialsFinalDecode =
          await jsonDecode(agentsPropertiesDetialsResponseDecode['Value']);

      log('RESPONSE OF AGENTS DETAILS::::::::::::: $agentsPropertiesDetialsFinalDecode');

      // agentDetailsData = AgentDetailsModel.fromJson(agentsPropertiesDetialsFinalDecode);

      agentPropertiesList = (agentsPropertiesDetialsFinalDecode as List)
          .map((i) => AgentsPropertiesModel.fromJson(i))
          .toList();

      isLoading = false;
      update();

      print('LENGTH OF AGENTS DATA::::: ${agentPropertiesList.length}');
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;
      update();
    }
  }
}
