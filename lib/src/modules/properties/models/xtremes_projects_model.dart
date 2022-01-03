import 'dart:convert';

class XtremesProjectsModel {
  XtremesProjectsModel({
    this.rowIndex,
    this.totalRow,
    this.projectId,
    this.title,
    this.description,
    this.isClassified,
    this.address,
    this.startPrice,
    this.endPrice,
    this.priceDetails,
    this.currencyType,
    this.availability,
    this.locationId,
    this.imageName,
    this.locationName,
  });

  int rowIndex;
  int totalRow;
  String projectId;
  String title;
  String description;
  bool isClassified;
  String address;
  String startPrice;
  String endPrice;
  String priceDetails;
  String currencyType;
  String availability;
  String locationId;
  String imageName;
  String locationName;

  factory XtremesProjectsModel.fromJson(Map<String, dynamic> json) =>
      XtremesProjectsModel(
        rowIndex: json["rowIndex"],
        totalRow: json["totalRow"],
        projectId: json["projectID"],
        title: json["title"],
        description: json["description"],
        isClassified: json["isClassified"],
        address: json["address"],
        startPrice: json["startPrice"],
        endPrice: json["endPrice"],
        priceDetails: json["priceDetails"],
        currencyType: json["currencyType"],
        availability: json["availability"],
        locationId: json["locationID"],
        imageName: json["imageName"],
        locationName: json["locationName"],
      );

  Map<String, dynamic> toJson() => {
        "rowIndex": rowIndex,
        "totalRow": totalRow,
        "projectID": projectId,
        "title": title,
        "description": description,
        "isClassified": isClassified,
        "address": address,
        "startPrice": startPrice,
        "endPrice": endPrice,
        "priceDetails": priceDetails,
        "currencyType": currencyType,
        "availability": availability,
        "locationID": locationId,
        "imageName": imageName,
        "locationName": locationName,
      };
}
