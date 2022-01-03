class AgentsPropertiesModel {
  String categoryTypeName, propertyImage, area, currencyType, propertyID;
  int bedroom, bathroom;
  double propertyPrice;

  AgentsPropertiesModel(
      {this.categoryTypeName,
      this.propertyImage,
      this.area,
      this.propertyPrice,
      this.currencyType,
      this.propertyID,
      this.bedroom,
      this.bathroom});

  factory AgentsPropertiesModel.fromJson(Map<String, dynamic> json) {
    return AgentsPropertiesModel(
      categoryTypeName:
          json['categoryTypeName'] == null ? '' : json['categoryTypeName'],
      propertyImage: json['propertyImage'] == null ? '' : json['propertyImage'],
      area: json['area'] == null ? '' : json['area'],
      propertyPrice: json['propertyPrice'] == null ? '' : json['propertyPrice'],
      currencyType: json['currencyType'] == null ? '' : json['currencyType'],
      bedroom: json['bedroom'] == null ? '' : json['bedroom'],
      bathroom: json['bathroom'] == null ? '' : json['bathroom'],
      propertyID: json['propertyID'] == null ? '' : json['propertyID'],
    );
  }
}
