import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:xtremessoft/src/modules/properties/models/xtremes_properties_model.dart';

class XtremesPropertiesController extends GetxController {
  List<XtremesPropertiesModel> xtremesPropertiesList;
  List<XtremesPropertiesModel> xtremesPropertiesListNew;

  bool isLoading = false;
  List<XtremesPropertiesModel> list;

  Future<void> getPropertiesData(int index) async {
    print('INSIDE PROPERTIES DATA IN XTREMES PROPERTIES CONTROLLER');

    // bool isLoading = false;

    String id = '00000000-0000-0000-0000-000000000000';

    int pageIndex = index;

    isLoading = true;
    update();

    Map<String, dynamic> propertiesDetails = ({
      'type': 'getallpropertiesbysearchNew',
      'value': '{citylocaitonId: '
          '${jsonEncode(id)}'
          ' , Maxprice: " ", Minprince: " ", Unit: 0,   bed: " ",locaitonId:"00000000-0000-0000-0000-000000000000",  pageIndex: $pageIndex, pageSize: 12}'
    });

    print('PROPERTIES DETAILS:::::::: $propertiesDetails');

    try {
      final propertiesDetailsResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: propertiesDetails);

      print('After propertiesdetailsResponse');

      var propertiesDetailsResponseDecode =
          await jsonDecode(propertiesDetailsResponse.body);

      // log('After propertiesDetailsResponseDecode $propertiesDetailsResponseDecode');

      var propertiesDetailsDecode =
          await jsonDecode(propertiesDetailsResponseDecode['Value']);

      //     log('PROJECTS DETAILS:::::::::::: $propertiesDetailsDecode');

      //   if (index == 0) {
      xtremesPropertiesList = (propertiesDetailsDecode as List)
          .map((i) => XtremesPropertiesModel.fromJson(i))
          .toList();

      //   list = xtremesPropertiesList;
      // } else {
      //   xtremesPropertiesListNew = (propertiesDetailsDecode as List)
      //       .map((i) => XtremesPropertiesModel.fromJson(i))
      //       .toList();

      //   list = xtremesPropertiesList + xtremesPropertiesListNew;
      // }

//      print('List ${list.length}');

      //  print('Xtremes Project LIst::::::::::: ${xtremesPropertiesList}');

      isLoading = false;
      update();
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;
      update();
    }
  }
}
