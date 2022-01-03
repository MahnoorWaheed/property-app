import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:xtremessoft/src/modules/properties/models/floor_plan_model.dart';
import 'package:xtremessoft/src/modules/properties/models/payment_plan.dart';

class BannerController extends GetxController {
  List<FloorPlanModel> floorPlanList;
  List<PaymentPlan> paymentPlanList;
  String bannerID;
  bool isLoading = false;

  Future<void> floorPlanDetails(String id) async {
    isLoading = true;
    update([3]);

    bannerID = id;

    Map<String, dynamic> floorPlan = ({
      'type': 'getprojectFloorPlanByID',
      'value': '{ id:${jsonEncode(id)}}'
    });

    try {
      final floorPlanResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: floorPlan);

      var floorPlanResponseDecode = await jsonDecode(floorPlanResponse.body);

      var floorPlanFinalDecode =
          await jsonDecode(floorPlanResponseDecode['Value']);

      floorPlanList = (floorPlanFinalDecode as List)
          .map((i) => FloorPlanModel.fromJson(i))
          .toList();

      // isLoading = false;
      // update([1]);
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;
      update([3]);
    }
  }

  Future<void> paymentPlanDetails() async {
    Map<String, dynamic> paymentPlan = ({
      'type': 'getProjectPaymentPlanById',
      'value': '{ id:${jsonEncode(bannerID)}}'
    });

    try {
      final paymentPlanResponse = await http.post(
          Uri.parse('https://xtremesproperty.com/services/Xtreme/process'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: paymentPlan);

      var paymentPlanResponseDecode =
          await jsonDecode(paymentPlanResponse.body);

      var paymentPlanFinalDecode =
          await jsonDecode(paymentPlanResponseDecode['Value']);

      paymentPlanList = (paymentPlanFinalDecode as List)
          .map((i) => PaymentPlan.fromJson(i))
          .toList();
      isLoading = false;
      update([3]);
    } catch (e) {
      print('INSIDE CATCH ::::::::: $e');
      isLoading = false;
      update([3]);
    }
  }
}
