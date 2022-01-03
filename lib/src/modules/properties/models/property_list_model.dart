class PropertyListModel {
  String propertyID,
      title,
      address,
      unitID,
      //  bedroom,
      //  bathroom,
      type,
      area,
      completeArea,

      ///     garage,
      //     hall,
      notes,
      //    kitchen,
      //    floors,
      categoryTypeID,
      categoryTypeName,
      price,
      priceDetails,
      currencyType,
      availability,
      agreement,
      locationID,
      locationName,
      imageName;

  int bedroom, bathroom, garage, hall, kitchen, floors;

  PropertyListModel(
      {
       this.propertyID,
      this.title,
      this.address,
      this.unitID,
      this.bedroom,
      this.bathroom,
      this.type,
      this.area,
      this.completeArea,
      this.garage,
      this.hall,
      this.notes,
      this.kitchen,
      this.floors,
      this.categoryTypeID,
      this.categoryTypeName,
      this.price,
      this.priceDetails,
      this.currencyType,
      this.availability,
      this.agreement,
      this.locationID,
      this.locationName,
      this.imageName});

  factory PropertyListModel.fromJson(Map<String, dynamic> json) {
    return PropertyListModel(
      propertyID: json['propertyID'] == null ? '' : json['propertyID'],
      title: json['title'] == null ? '' : json['title'],
      address: json['address'] == null ? '' : json['address'],
      unitID: json['unitID'] == null ? '' : json['unitID'],
      bedroom: json['bedroom'] == null ? '' : json['bedroom'],
      bathroom: json['bathroom'] == null ? '' : json['bathroom'],
      type: json['type'] == null ? '' : json['type'],
      area: json['area'] == null ? '' : json['area'],
      completeArea: json['completeArea'] == null ? '' : json['completeArea'],
      garage: json['garage'] == null ? '' : json['garage'],
      hall: json['hall'] == null ? '' : json['hall'],
      notes: json['notes'] == null ? '' : json['notes'],
      kitchen: json['kitchen'] == null ? '' : json['kitchen'],
      floors: json['floors'] == null ? '' : json['floors'],
      categoryTypeID:
          json['categoryTypeID'] == null ? '' : json['categoryTypeID'],
      categoryTypeName:
          json['categoryTypeName'] == null ? '' : json['categoryTypeName'],
      price: json['price'] == null ? '' : json['price'],
      priceDetails: json['priceDetails'] == null ? '' : json['priceDetails'],
      currencyType: json['currencyType'] == null ? '' : json['currencyType'],
      availability: json['availability'] == null ? '' : json['availability'],
      agreement: json['agreement'] == null ? '' : json['agreement'],
      locationID: json['locationID'] == null ? '' : json['locationID'],
      locationName: json['locationName'] == null ? '' : json['locationName'],
      imageName: json['imageName'] == null
          ? 'https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2020/12/25/907391-housing-pixabat.jpg'
          : json['imageName'],
    );
  }
}
