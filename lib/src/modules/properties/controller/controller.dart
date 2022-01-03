import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:xtremessoft/src/modules/properties/models/banner_details_model.dart';
import 'package:xtremessoft/src/modules/properties/models/banner_model.dart';
import 'package:xtremessoft/src/modules/properties/models/properties_details.dart';
import 'package:xtremessoft/src/modules/properties/models/property_list_model.dart';
import 'package:xtremessoft/src/modules/properties/models/special_offers.dart';
import 'package:xtremessoft/src/modules/properties/screens/details.dart';

import 'banner_controller.dart';

class PropertyController extends GetxController {
  List<PropertyListModel> propertyList;
  List<BannerDetailsModel> bannerDetailsList;
  List<BannerModel> banner;
  List<PropertiesDetailsModel> propertiesDetailsList;
  List<SpecialOfferModel> specialOfferList;

  BannerController bannerController = BannerController();

  bool isLoading = false;
  String title;

  Future<void> bannerProperty() async {
    isLoading = true;

    update();

    Map<String, dynamic> body = ({
      'type': 'loadTopBannerClassifiedPropertyData',
    });

    print('BODY::::: $body');

    try {
      final response = await http.post(
        Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
        headers: <String, String>{
          'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
        },
        body: body,
      );
      var responseDecode = await jsonDecode(response.body);

      var jsonDataDecode = await jsonDecode(responseDecode['Value']);

      //  log('BANNER RESPONSE :::::::::::: $jsonDataDecode ');

      banner =
          (jsonDataDecode as List).map((i) => BannerModel.fromJson(i)).toList();

      isLoading = false;

      update();
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;

      update();
    }
  }

  Future<void> listingProperties() async {
    // isLoading = true;
    // update([2]);
    Map<String, dynamic> listingBody = ({
      'type': 'listpropertyforwebsite',
    });

    print('BODY::::: $listingBody');

    try {
      final listResponse = await http.post(
        Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
        headers: <String, String>{
          'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
        },
        body: listingBody,
      );

      var listResponseDecode = await jsonDecode(listResponse.body);

      var listJsonDataDecode = await jsonDecode(listResponseDecode['Value']);

      // log('listJsonDataDecode :::::::::::: $listJsonDataDecode');

      propertyList = (listJsonDataDecode as List)
          .map((i) => PropertyListModel.fromJson(i))
          .toList();

      // isLoading = false;
      // update([2]);
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      // isLoading = false;
      // update([2]);
    }
  }

  Future<void> propertiesDetails(String id) async {
    print('INSIDE propertiesDetails');

    print('ID::::::::::: $id');

    isLoading = true;
    update();

    Map<String, dynamic> detailsBody =
        ({'type': 'getprojectdetailsByID', 'value': '{ id:${jsonEncode(id)}}'});

    try {
      final listofBannerResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: detailsBody);

      var bannerListResponseDecode =
          await jsonDecode(listofBannerResponse.body);

      var bannerListDecode =
          await jsonDecode(bannerListResponseDecode['Value']);

      bannerDetailsList = (bannerListDecode as List)
          .map((i) => BannerDetailsModel.fromJson(i))
          .toList();

      isLoading = false;
      update();
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');

      isLoading = false;
      update();
    }
  }

  Future<void> singleListPropertiesDetails(String id) async {
    print('INSIDE SINGLE LIST PROERTIES DETAILS');

    print('id is::::::::::::::::::: $id');
    // bannerController.isLoading = true;
    // update([3]);

    isLoading = true;
    update();

    Map<String, dynamic> propertiesDetailsBody = ({
      'type': 'getpropertydetailsByID',
      'value': '{ id:${jsonEncode(id)}}'
    });

    try {
      print('INSIDE TRY');
      final listofpropertiesDetailsResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: propertiesDetailsBody);

      print('AFTER POST REQUEST:::::::::::::');

      var propertiesDetailsListResponseDecode =
          await jsonDecode(listofpropertiesDetailsResponse.body);

      //  log('AFTER FIRST DECODE $propertiesDetailsListResponseDecode');

      var propertiesDetialsListDecode =
          await jsonDecode(propertiesDetailsListResponseDecode['Value']);

      propertiesDetailsList = (propertiesDetialsListDecode as List)
          .map((i) => PropertiesDetailsModel.fromJson(i))
          .toList();

      log('PROPERTIS LIST DATA::::::::::::: $propertiesDetialsListDecode');

      // if (propertiesDetailsList[0].title.length > 7) {
      //   title = propertiesDetailsList[0].title.substring(0, 8);
      // }

      isLoading = false;
      update();

      // log('RESPONSE::::::::::  $propertiesDetialsListDecode');

      // print(
      //     'PROPERTIES OBJECT :::::::::::: ${propertiesDetailsList[0].propertyId}');

      // print(
      //     'PROPERTIES OBJECT :::::::::::: ${propertiesDetailsList[1].propertyId}');

      // bannerController.isLoading = false;
      // update([3]);
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;
      update();
      // bannerController.isLoading = false;
      // update([3]);
    }
  }

  Future<void> getSpecialOffers() async {
    print('INSIDE SPECIAL OFFERS');
    isLoading = true;
    update();

    Map<String, dynamic> specialOffersBody = ({
      'type': 'listclassifiedpropertyforwebsite',
      //  'value': '{ id:${jsonEncode(id)}}'
    });

    try {
      print('INSIDE TRY');
      final specialOffersDetailsResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: specialOffersBody);

      print('AFTER POST REQUEST:::::::::::::');

      var specialOffersResponseDecode =
          await jsonDecode(specialOffersDetailsResponse.body);

      var specialOffersDecode =
          await jsonDecode(specialOffersResponseDecode['Value']);

      specialOfferList = (specialOffersDecode as List)
          .map((i) => SpecialOfferModel.fromJson(i))
          .toList();

      //'  log('PROPERTIS LIST DATA::::::::::::: $specialOffersResponseDecode');

      isLoading = false;
      update();
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;
      update();
    }
  }
}
