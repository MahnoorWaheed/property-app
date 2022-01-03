class SpecialOfferModel {
  SpecialOfferModel({
    this.unitId,
    this.bedroom,
    this.bathroom,
    this.type,
    this.area,
    this.garage,
    this.hall,
    this.notes,
    this.kitchen,
    this.floors,
    this.categoryTypeName,
    this.price,
    this.propertyId,
    this.currencyType,
    this.title,
    this.classifiedId,
    this.agentName,
    this.status,
    this.imageName,
    this.rejectReason,
    this.packageName,
    this.locationName,
    this.createdDate,
    this.startDate,
    this.endDate,
    this.daysCount,
  });

  String unitId;
  int bedroom;
  int bathroom;
  String type;
  String area;
  int garage;
  int hall;
  String notes;
  int kitchen;
  int floors;
  String categoryTypeName;
  String price;
  String propertyId;
  String currencyType;
  String title;
  String classifiedId;
  String agentName;
  String status;
  String imageName;
  String rejectReason;
  String packageName;
  String locationName;
  String createdDate;
  String startDate;
  String endDate;
  int daysCount;

  factory SpecialOfferModel.fromJson(Map<String, dynamic> json) =>
      SpecialOfferModel(
        unitId: json["unitID"],
        bedroom: json["bedroom"],
        bathroom: json["bathroom"],
        type: json["type"],
        area: json["area"],
        garage: json["garage"],
        hall: json["hall"],
        notes: json["notes"],
        kitchen: json["kitchen"],
        floors: json["floors"],
        categoryTypeName: json["categoryTypeName"],
        price: json["price"],
        propertyId: json["propertyID"],
        currencyType: json["currencyType"],
        title: json["title"],
        classifiedId: json["classifiedID"],
        agentName: json["agentName"],
        status: json["status"],
        imageName: json["imageName"],
        rejectReason: json["rejectReason"],
        packageName: json["packageName"],
        locationName: json["locationName"],
        createdDate: json["createdDate"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        daysCount: json["daysCount"],
      );

  Map<String, dynamic> toJson() => {
        "unitID": unitId,
        "bedroom": bedroom,
        "bathroom": bathroom,
        "type": type,
        "area": area,
        "garage": garage,
        "hall": hall,
        "notes": notes,
        "kitchen": kitchen,
        "floors": floors,
        "categoryTypeName": categoryTypeName,
        "price": price,
        "propertyID": propertyId,
        "currencyType": currencyType,
        "title": title,
        "classifiedID": classifiedId,
        "agentName": agentName,
        "status": status,
        "imageName": imageName,
        "rejectReason": rejectReason,
        "packageName": packageName,
        "locationName": locationName,
        "createdDate": createdDate,
        "startDate": startDate,
        "endDate": endDate,
        "daysCount": daysCount,
      };
}
