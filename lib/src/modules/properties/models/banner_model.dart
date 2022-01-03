class BannerModel {
  String type,
      categoryTypeName,
      price,
      imageName,
      agentName,
      propertyID,
      title,
      locationName,
      currencyType,
      createdDate,
      startDate,
      endDate;

  BannerModel({
    this.type,
    this.categoryTypeName,
    this.price,
    this.imageName,
    this.agentName,
    this.propertyID,
    this.createdDate,
    this.currencyType,
    this.endDate,
    this.locationName,
    this.startDate,
    this.title,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      type: json['type'] == null ? '' : json['type'],
      categoryTypeName:
          json['categoryTypeName'] == null ? '' : json['categoryTypeName'],
      price: json['price'] == null ? '' : json['price'],
      imageName: json['imageName'] == null ? '' : json['imageName'],
      agentName: json['agentName'] == null ? '' : json['agentName'],
      propertyID: json['propertyID'] == null ? '' : json['propertyID'],
      createdDate: json['createdDate'] == null ? '' : json['createdDate'],
      currencyType: json['currencyType'] == null ? '' : json['currencyType'],
      endDate: json['endDate'] == null ? '' : json['endDate'],
      locationName: json['locaionName'] == null ? '' : json['locaionName'],
      startDate: json['startDate'] == null ? '' : json['startDate'],
      title: json['title'] == null ? '' : json['title'],
    );
  }
}
