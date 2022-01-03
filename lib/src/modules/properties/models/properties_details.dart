// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

// String welcomeToJson(Welcome data) => json.encode(data.toJson());

class PropertiesDetailsModel {
  PropertiesDetailsModel({
    this.propertyId,
    this.title,
    this.description,
    this.address,
    this.videoUrl,
    this.googleMap,
    this.unitId,
    this.bedroom,
    this.bathroom,
    this.type,
    this.valueUnits,
    this.area,
    this.garage,
    this.hall,
    this.notes,
    this.kitchen,
    this.floors,
    this.houseUnitType,
    this.centralAirCondition,
    this.centralHeating,
    this.electricityBackup,
    this.internetAccess,
    this.satelliteOrCableTv,
    this.drawingRoom,
    this.diningRoom,
    this.studyRoom,
    this.prayerRoom,
    this.storeRoom,
    this.loungeOrSittingRoom,
    this.laundryRoom,
    this.gymRoom,
    this.otherRoom,
    this.servantRoom,
    this.lawnorGarden,
    this.swimmingPool,
    this.maintenanceStaff,
    this.securityStaff,
    this.facilitiesforDisabled,
    this.otherFacilities,
    this.otherNearbyPlace,
    this.nearbyPublicTransportService,
    this.nearbyRestaurants,
    this.nearbyShoppingMall,
    this.nearbyHospital,
    this.nearbySchool,
    this.otherCommunication,
    this.plotPossesion,
    this.plotDisputed,
    this.plotFile,
    this.plotElectricity,
    this.plotSuiGas,
    this.plotParkFacing,
    this.plotCorner,
    this.plotSewerage,
    this.plotWaterSupply,
    this.plotBoundaryWall,
    this.plotSecurityStaff,
    this.plotNearbySchool,
    this.plotNearbyHospital,
    this.plotNearbyShoppingMall,
    this.plotNearbyRestaurant,
    this.plotNearbyPublicTransportService,
    this.plotOtherNearbyPlace,
    this.plotOtherFacilities,
    this.commercialUnitType,
    this.commerciaCentralAirCondition,
    this.commerciaCentralHeating,
    this.commerciaElectricityBackup,
    this.commerciaMeetingRoom,
    this.commerciaPrayerRoom,
    this.commerciaOtherRoom,
    this.commerciaLoungeOrSittingRoom,
    this.commerciaLearningRoom,
    this.commerciaServantRoom,
    this.commerciaLawnorGarden,
    this.commerciaInternetAccess,
    this.commerciaSatelliteOrCableTv,
    this.commerciaConferenceRoom,
    this.commerciaOtherCommunication,
    this.commerciaNearbySchools,
    this.commerciaNearbyHospital,
    this.commerciaNearbyShoppingMall,
    this.commerciaNearbyRestaurants,
    this.commerciaNearbyPublicTransportService,
    this.commerciaOtherNearbyPlace,
    this.commerciaMaintenanceStaff,
    this.commerciaSecurityStaff,
    this.commerciaFacilitiesforDisabled,
    this.commerciaOtherFacilities,
    this.propertyType,
    this.categoryTypeId,
    this.viewCount,
    this.categoryTypeName,
    this.price,
    this.priceDetails,
    this.currencyType,
    this.availability,
    this.agreement,
    this.locationId,
    this.bsid,
    this.locationName,
    this.imageName,
    this.days,
    this.agentId,
    this.agentName,
    this.agentDescription,
    this.agentGender,
    this.agentPhoneNo,
    this.agentAddress,
    this.agentPosition,
    this.agentEmail,
    this.agentImage,
    this.propertyHolder,
  });

  String propertyId;
  String title;
  String description;
  String address;
  String videoUrl;
  String googleMap;
  String unitId;
  int bedroom;
  int bathroom;
  String type;
  String valueUnits;
  String area;
  int garage;
  int hall;
  String notes;
  int kitchen;
  int floors;
  String houseUnitType;
  dynamic centralAirCondition;
  dynamic centralHeating;
  dynamic electricityBackup;
  String internetAccess;
  String satelliteOrCableTv;
  String drawingRoom;
  String diningRoom;
  String studyRoom;
  String prayerRoom;
  dynamic storeRoom;
  String loungeOrSittingRoom;
  dynamic laundryRoom;
  dynamic gymRoom;
  dynamic otherRoom;
  dynamic servantRoom;
  dynamic lawnorGarden;
  dynamic swimmingPool;
  dynamic maintenanceStaff;
  dynamic securityStaff;
  dynamic facilitiesforDisabled;
  String otherFacilities;
  String otherNearbyPlace;
  String nearbyPublicTransportService;
  String nearbyRestaurants;
  String nearbyShoppingMall;
  String nearbyHospital;
  String nearbySchool;
  String otherCommunication;
  dynamic plotPossesion;
  dynamic plotDisputed;
  dynamic plotFile;
  dynamic plotElectricity;
  dynamic plotSuiGas;
  dynamic plotParkFacing;
  dynamic plotCorner;
  dynamic plotSewerage;
  dynamic plotWaterSupply;
  dynamic plotBoundaryWall;
  dynamic plotSecurityStaff;
  String plotNearbySchool;
  String plotNearbyHospital;
  String plotNearbyShoppingMall;
  String plotNearbyRestaurant;
  String plotNearbyPublicTransportService;
  String plotOtherNearbyPlace;
  String plotOtherFacilities;
  String commercialUnitType;
  dynamic commerciaCentralAirCondition;
  dynamic commerciaCentralHeating;
  dynamic commerciaElectricityBackup;
  dynamic commerciaMeetingRoom;
  dynamic commerciaPrayerRoom;
  dynamic commerciaOtherRoom;
  dynamic commerciaLoungeOrSittingRoom;
  dynamic commerciaLearningRoom;
  dynamic commerciaServantRoom;
  dynamic commerciaLawnorGarden;
  dynamic commerciaInternetAccess;
  dynamic commerciaSatelliteOrCableTv;
  dynamic commerciaConferenceRoom;
  String commerciaOtherCommunication;
  String commerciaNearbySchools;
  String commerciaNearbyHospital;
  String commerciaNearbyShoppingMall;
  String commerciaNearbyRestaurants;
  String commerciaNearbyPublicTransportService;
  String commerciaOtherNearbyPlace;
  dynamic commerciaMaintenanceStaff;
  dynamic commerciaSecurityStaff;
  dynamic commerciaFacilitiesforDisabled;
  String commerciaOtherFacilities;
  String propertyType;
  String categoryTypeId;
  int viewCount;
  String categoryTypeName;
  String price;
  String priceDetails;
  String currencyType;
  String availability;
  String agreement;
  String locationId;
  String bsid;
  String locationName;
  String imageName;
  int days;
  String agentId;
  String agentName;
  String agentDescription;
  String agentGender;
  String agentPhoneNo;
  String agentAddress;
  String agentPosition;
  String agentEmail;
  String agentImage;
  String propertyHolder;

  factory PropertiesDetailsModel.fromJson(Map<String, dynamic> json) =>
      PropertiesDetailsModel(
        propertyId: json["propertyID"],
        title: json["title"],
        description: json["description"],
        address: json["address"],
        videoUrl: json["videoURL"],
        googleMap: json["googleMap"],
        unitId: json["unitID"],
        bedroom: json["bedroom"],
        bathroom: json["bathroom"],
        type: json["type"],
        valueUnits: json["valueUnits"],
        area: json["area"],
        garage: json["garage"],
        hall: json["hall"],
        notes: json["notes"],
        kitchen: json["kitchen"],
        floors: json["floors"],
        houseUnitType: json["houseUnitType"],
        centralAirCondition: json["centralAirCondition"],
        centralHeating: json["centralHeating"],
        electricityBackup: json["electricityBackup"],
        internetAccess: json["internetAccess"],
        satelliteOrCableTv: json["satelliteORCableTV"],
        drawingRoom: json["drawingRoom"],
        diningRoom: json["diningRoom"],
        studyRoom: json["studyRoom"],
        prayerRoom: json["prayerRoom"],
        storeRoom: json["storeRoom"],
        loungeOrSittingRoom: json["loungeOrSittingRoom"],
        laundryRoom: json["laundryRoom"],
        gymRoom: json["gymRoom"],
        otherRoom: json["otherRoom"],
        servantRoom: json["servantRoom"],
        lawnorGarden: json["lawnorGarden"],
        swimmingPool: json["swimmingPool"],
        maintenanceStaff: json["maintenanceStaff"],
        securityStaff: json["securityStaff"],
        facilitiesforDisabled: json["facilitiesforDisabled"],
        otherFacilities: json["otherFacilities"],
        otherNearbyPlace: json["otherNearbyPlace"],
        nearbyPublicTransportService: json["nearbyPublicTransportService"],
        nearbyRestaurants: json["nearbyRestaurants"],
        nearbyShoppingMall: json["nearbyShoppingMall"],
        nearbyHospital: json["nearbyHospital"],
        nearbySchool: json["nearbySchool"],
        otherCommunication: json["otherCommunication"],
        plotPossesion: json["plotPossesion"],
        plotDisputed: json["plotDisputed"],
        plotFile: json["plotFile"],
        plotElectricity: json["plotElectricity"],
        plotSuiGas: json["plotSuiGas"],
        plotParkFacing: json["plotParkFacing"],
        plotCorner: json["plotCorner"],
        plotSewerage: json["plotSewerage"],
        plotWaterSupply: json["plotWaterSupply"],
        plotBoundaryWall: json["plotBoundaryWall"],
        plotSecurityStaff: json["plotSecurityStaff"],
        plotNearbySchool: json["plotNearbySchool"],
        plotNearbyHospital: json["plotNearbyHospital"],
        plotNearbyShoppingMall: json["plotNearbyShoppingMall"],
        plotNearbyRestaurant: json["plotNearbyRestaurant"],
        plotNearbyPublicTransportService:
            json["plotNearbyPublicTransportService"],
        plotOtherNearbyPlace: json["plotOtherNearbyPlace"],
        plotOtherFacilities: json["plotOtherFacilities"],
        commercialUnitType: json["commercialUnitType"],
        commerciaCentralAirCondition: json["commerciaCentralAirCondition"],
        commerciaCentralHeating: json["commerciaCentralHeating"],
        commerciaElectricityBackup: json["commerciaElectricityBackup"],
        commerciaMeetingRoom: json["commerciaMeetingRoom"],
        commerciaPrayerRoom: json["commerciaPrayerRoom"],
        commerciaOtherRoom: json["commerciaOtherRoom"],
        commerciaLoungeOrSittingRoom: json["commerciaLoungeOrSittingRoom"],
        commerciaLearningRoom: json["commerciaLearningRoom"],
        commerciaServantRoom: json["commerciaServantRoom"],
        commerciaLawnorGarden: json["commerciaLawnorGarden"],
        commerciaInternetAccess: json["commerciaInternetAccess"],
        commerciaSatelliteOrCableTv: json["commerciaSatelliteORCableTV"],
        commerciaConferenceRoom: json["commerciaConferenceRoom"],
        commerciaOtherCommunication: json["commerciaOtherCommunication"],
        commerciaNearbySchools: json["commerciaNearbySchools"],
        commerciaNearbyHospital: json["commerciaNearbyHospital"],
        commerciaNearbyShoppingMall: json["commerciaNearbyShoppingMall"],
        commerciaNearbyRestaurants: json["commerciaNearbyRestaurants"],
        commerciaNearbyPublicTransportService:
            json["commerciaNearbyPublicTransportService"],
        commerciaOtherNearbyPlace: json["commerciaOtherNearbyPlace"],
        commerciaMaintenanceStaff: json["commerciaMaintenanceStaff"],
        commerciaSecurityStaff: json["commerciaSecurityStaff"],
        commerciaFacilitiesforDisabled: json["commerciaFacilitiesforDisabled"],
        commerciaOtherFacilities: json["commerciaOtherFacilities"],
        propertyType: json["propertyType"],
        categoryTypeId: json["categoryTypeID"],
        viewCount: json["viewCount"],
        categoryTypeName: json["categoryTypeName"],
        price: json["price"],
        priceDetails: json["priceDetails"],
        currencyType: json["currencyType"],
        availability: json["availability"],
        agreement: json["agreement"],
        locationId: json["locationID"],
        bsid: json["bsid"],
        locationName: json["locationName"],
        imageName: json["imageName"],
        days: json["days"],
        agentId: json["agentID"],
        agentName: json["agentName"],
        agentDescription: json["agentDescription"],
        agentGender: json["agentGender"],
        agentPhoneNo: json["agentPhoneNo"],
        agentAddress: json["agentAddress"],
        agentPosition: json["agentPosition"],
        agentEmail: json["agentEmail"],
        agentImage: json["agentImage"],
        propertyHolder: json["propertyHolder"],
      );

  Map<String, dynamic> toJson() => {
        "propertyID": propertyId,
        "title": title,
        "description": description,
        "address": address,
        "videoURL": videoUrl,
        "googleMap": googleMap,
        "unitID": unitId,
        "bedroom": bedroom,
        "bathroom": bathroom,
        "type": type,
        "valueUnits": valueUnits,
        "area": area,
        "garage": garage,
        "hall": hall,
        "notes": notes,
        "kitchen": kitchen,
        "floors": floors,
        "houseUnitType": houseUnitType,
        "centralAirCondition": centralAirCondition,
        "centralHeating": centralHeating,
        "electricityBackup": electricityBackup,
        "internetAccess": internetAccess,
        "satelliteORCableTV": satelliteOrCableTv,
        "drawingRoom": drawingRoom,
        "diningRoom": diningRoom,
        "studyRoom": studyRoom,
        "prayerRoom": prayerRoom,
        "storeRoom": storeRoom,
        "loungeOrSittingRoom": loungeOrSittingRoom,
        "laundryRoom": laundryRoom,
        "gymRoom": gymRoom,
        "otherRoom": otherRoom,
        "servantRoom": servantRoom,
        "lawnorGarden": lawnorGarden,
        "swimmingPool": swimmingPool,
        "maintenanceStaff": maintenanceStaff,
        "securityStaff": securityStaff,
        "facilitiesforDisabled": facilitiesforDisabled,
        "otherFacilities": otherFacilities,
        "otherNearbyPlace": otherNearbyPlace,
        "nearbyPublicTransportService": nearbyPublicTransportService,
        "nearbyRestaurants": nearbyRestaurants,
        "nearbyShoppingMall": nearbyShoppingMall,
        "nearbyHospital": nearbyHospital,
        "nearbySchool": nearbySchool,
        "otherCommunication": otherCommunication,
        "plotPossesion": plotPossesion,
        "plotDisputed": plotDisputed,
        "plotFile": plotFile,
        "plotElectricity": plotElectricity,
        "plotSuiGas": plotSuiGas,
        "plotParkFacing": plotParkFacing,
        "plotCorner": plotCorner,
        "plotSewerage": plotSewerage,
        "plotWaterSupply": plotWaterSupply,
        "plotBoundaryWall": plotBoundaryWall,
        "plotSecurityStaff": plotSecurityStaff,
        "plotNearbySchool": plotNearbySchool,
        "plotNearbyHospital": plotNearbyHospital,
        "plotNearbyShoppingMall": plotNearbyShoppingMall,
        "plotNearbyRestaurant": plotNearbyRestaurant,
        "plotNearbyPublicTransportService": plotNearbyPublicTransportService,
        "plotOtherNearbyPlace": plotOtherNearbyPlace,
        "plotOtherFacilities": plotOtherFacilities,
        "commercialUnitType": commercialUnitType,
        "commerciaCentralAirCondition": commerciaCentralAirCondition,
        "commerciaCentralHeating": commerciaCentralHeating,
        "commerciaElectricityBackup": commerciaElectricityBackup,
        "commerciaMeetingRoom": commerciaMeetingRoom,
        "commerciaPrayerRoom": commerciaPrayerRoom,
        "commerciaOtherRoom": commerciaOtherRoom,
        "commerciaLoungeOrSittingRoom": commerciaLoungeOrSittingRoom,
        "commerciaLearningRoom": commerciaLearningRoom,
        "commerciaServantRoom": commerciaServantRoom,
        "commerciaLawnorGarden": commerciaLawnorGarden,
        "commerciaInternetAccess": commerciaInternetAccess,
        "commerciaSatelliteORCableTV": commerciaSatelliteOrCableTv,
        "commerciaConferenceRoom": commerciaConferenceRoom,
        "commerciaOtherCommunication": commerciaOtherCommunication,
        "commerciaNearbySchools": commerciaNearbySchools,
        "commerciaNearbyHospital": commerciaNearbyHospital,
        "commerciaNearbyShoppingMall": commerciaNearbyShoppingMall,
        "commerciaNearbyRestaurants": commerciaNearbyRestaurants,
        "commerciaNearbyPublicTransportService":
            commerciaNearbyPublicTransportService,
        "commerciaOtherNearbyPlace": commerciaOtherNearbyPlace,
        "commerciaMaintenanceStaff": commerciaMaintenanceStaff,
        "commerciaSecurityStaff": commerciaSecurityStaff,
        "commerciaFacilitiesforDisabled": commerciaFacilitiesforDisabled,
        "commerciaOtherFacilities": commerciaOtherFacilities,
        "propertyType": propertyType,
        "categoryTypeID": categoryTypeId,
        "viewCount": viewCount,
        "categoryTypeName": categoryTypeName,
        "price": price,
        "priceDetails": priceDetails,
        "currencyType": currencyType,
        "availability": availability,
        "agreement": agreement,
        "locationID": locationId,
        "bsid": bsid,
        "locationName": locationName,
        "imageName": imageName,
        "days": days,
        "agentID": agentId,
        "agentName": agentName,
        "agentDescription": agentDescription,
        "agentGender": agentGender,
        "agentPhoneNo": agentPhoneNo,
        "agentAddress": agentAddress,
        "agentPosition": agentPosition,
        "agentEmail": agentEmail,
        "agentImage": agentImage,
        "propertyHolder": propertyHolder,
      };
}
