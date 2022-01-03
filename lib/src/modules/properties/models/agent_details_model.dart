class AgentDetailsModel {
  String agentID,
      name,
      age,
      description,
      gender,
      phoneNo,
      address,
      position,
      email,
      createdDate,
      createdBy,
      modifyDate,
      modifyBy,
      categoryTypeID,
      userID,
      username,
      password,
      totalproperty,
      imageName;

  bool isActive;
  int days;
  // totalproperty;

  AgentDetailsModel({
    this.agentID,
    this.name,
    this.age,
    this.description,
    this.gender,
    this.phoneNo,
    this.address,
    this.position,
    this.email,
    this.createdDate,
    this.createdBy,
    this.modifyDate,
    this.modifyBy,
    this.categoryTypeID,
    this.userID,
    this.username,
    this.password,
    this.imageName,
    this.isActive,
    this.days,
    this.totalproperty,
  });

  factory AgentDetailsModel.fromJson(Map<String, dynamic> json) {
    return AgentDetailsModel(
      agentID: json['agentID'] == null ? '' : json['agentID'],
      name: json['name'] == null ? '' : json['name'],
      age: json['age'] == null ? '' : json['age'],
      description: json['description'] == null ? '' : json['description'],
      gender: json['gender'] == null ? '' : json['gender'],
      phoneNo: json['phoneNo'] == null ? '' : json['phoneNo'],
      address: json['address'] == null ? '' : json['address'],
      position: json['position'] == null ? '' : json['position'],
      email: json['email'] == null ? '' : json['email'],
      createdDate: json['createdDate'] == null ? '' : json['createdDate'],
      createdBy: json['createdBy'] == null ? '' : json['createdBy'],
      modifyDate: json['modifyDate'] == null ? '' : json['modifyDate'],
      modifyBy: json['modifyBy'] == null ? '' : json['modifyBy'],
      categoryTypeID:
          json['categoryTypeID'] == null ? '' : json['categoryTypeID'],
      userID: json['userID'] == null ? '' : json['userID'],
      username: json['username'] == null ? '' : json['username'],
      password: json['password'] == null ? '' : json['password'],
      imageName: json['imageName'] == null ? '' : json['imageName'],
      isActive: json['isActive'] == null ? '' : json['isActive'],
      days: json['days'] == null ? '' : json['days'],
      totalproperty: json['totalproperty'] == null ? '' : json['totalproperty'],
    );
  }
}
