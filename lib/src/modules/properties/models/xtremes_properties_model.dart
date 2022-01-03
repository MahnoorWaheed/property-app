// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

class XtremesPropertiesModel {
  XtremesPropertiesModel({
    this.rowIndex,
    this.totalRow,
    this.propertyId,
    this.title,
    this.description,
    this.isClassified,
    this.address,
    this.unitId,
    this.bedroom,
    this.bathroom,
    this.type,
    this.area,
    this.valueUnits,
    this.garage,
    this.hall,
    this.notes,
    this.kitchen,
    this.floors,
    this.categoryTypeId,
    this.categoryTypeName,
    this.price,
    this.priceDetails,
    this.currencyType,
    this.availability,
    this.agreement,
    this.locationId,
    this.propertyType,
    this.locationName,
    this.imageName,
  });

  int rowIndex;
  int totalRow;
  String propertyId;
  String title;
  String description;
  bool isClassified;
  String address;
  String unitId;
  int bedroom;
  int bathroom;
  String type;
  String area;
  String valueUnits;
  int garage;
  int hall;
  String notes;
  int kitchen;
  int floors;
  String categoryTypeId;
  String categoryTypeName;
  String price;
  String priceDetails;
  String currencyType;
  String availability;
  String agreement;
  String locationId;
  String propertyType;
  String locationName;
  String imageName;

  factory XtremesPropertiesModel.fromJson(Map<String, dynamic> json) =>
      XtremesPropertiesModel(
        rowIndex: json["rowIndex"],
        totalRow: json["totalRow"],
        propertyId: json["propertyID"],
        title: json["title"],
        description: json["description"],
        isClassified: json["isClassified"],
        address: json["address"],
        unitId: json["unitID"],
        bedroom: json["bedroom"],
        bathroom: json["bathroom"],
        type: json["type"],
        area: json["area"],
        valueUnits: json["valueUnits"],
        garage: json["garage"],
        hall: json["hall"],
        notes: json["notes"],
        kitchen: json["kitchen"],
        floors: json["floors"],
        categoryTypeId: json["categoryTypeID"],
        categoryTypeName: json["categoryTypeName"],
        price: json["price"],
        priceDetails: json["priceDetails"],
        currencyType: json["currencyType"],
        availability: json["availability"],
        agreement: json["agreement"],
        locationId: json["locationID"],
        propertyType: json["propertyType"],
        locationName: json["locationName"],
        imageName: json["imageName"],
      );

  Map<String, dynamic> toJson() => {
        "rowIndex": rowIndex,
        "totalRow": totalRow,
        "propertyID": propertyId,
        "title": title,
        "description": description,
        "isClassified": isClassified,
        "address": address,
        "unitID": unitId,
        "bedroom": bedroom,
        "bathroom": bathroom,
        "type": type,
        "area": area,
        "valueUnits": valueUnits,
        "garage": garage,
        "hall": hall,
        "notes": notes,
        "kitchen": kitchen,
        "floors": floors,
        "categoryTypeID": categoryTypeId,
        "categoryTypeName": categoryTypeName,
        "price": price,
        "priceDetails": priceDetails,
        "currencyType": currencyType,
        "availability": availability,
        "agreement": agreement,
        "locationID": locationId,
        "propertyType": propertyType,
        "locationName": locationName,
        "imageName": imageName,
      };
}
