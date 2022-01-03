import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:xtremessoft/src/modules/properties/models/xtremes_projects_model.dart';

class XtremesProjectsController extends GetxController {
  List<XtremesProjectsModel> xtremesProjectsList;

  bool isLoading = false;

  Future<void> getProjectsDetails() async {
    print('INSIDE getProjectsDetails');

    String id = '00000000-0000-0000-0000-000000000000';

    isLoading = true;
    update();

    Map<String, dynamic> projectsDetails = ({
      'type': 'Project_SelectAllListingSearch_New',
      'value':
          '{locaitonId: ' '${jsonEncode(id)}' ' , pageIndex: 1, pageSize: 12}'
    });

    try {
      final projectsDetailsResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: projectsDetails);

      var projectsDetailsResponseDecode =
          await jsonDecode(projectsDetailsResponse.body);

      var projectsDetailsDecode =
          await jsonDecode(projectsDetailsResponseDecode['Value']);

      //  log('PROJECTS DETAILS:::::::::::: ${projectsDetailsResponseDecode}');

      xtremesProjectsList = (projectsDetailsDecode as List)
          .map((i) => XtremesProjectsModel.fromJson(i))
          .toList();

      print('Xtremes Project LIst::::::::::: ${xtremesProjectsList}');

      isLoading = false;
      update();
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;
      update();
    }
  }
}
