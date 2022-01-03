class AgentsModel {
  String agentID,
      name,
      age,
      gender,
      phoneNo,
      address,
      description,
      position,
      email,
      createdDate,
      createdBy,
      modifyDate,
      modifyBy,
      userID,
      username,
      password,
      imageName;

  bool isActive;

  int totalproperty;

  AgentsModel(
      {this.agentID,
      this.name,
      this.gender,
      this.phoneNo,
      this.address,
      this.description,
      this.position,
      this.email,
      this.isActive,
      this.createdDate,
      this.createdBy,
      this.modifyDate,
      this.modifyBy,
      this.userID,
      this.username,
      this.password,
      this.imageName,
      this.totalproperty});

  factory AgentsModel.fromJson(Map<String, dynamic> json) {
    return AgentsModel(
      agentID: json['agentID'] == null ? '' : json['agentID'],
      name: json['name'] == null ? '' : json['name'],
      gender: json['gender'] == null ? '' : json['gender'],
      phoneNo: json['phoneNo'] == null ? '' : json['phoneNo'],
      address: json['address'] == null ? '' : json['address'],
      description: json['description'] == null ? '' : json['description'],
      position: json['position'] == null ? '' : json['position'],
      email: json['email'] == null ? '' : json['email'],
      isActive: json['isActive'] == null ? '' : json['isActive'],
      createdDate: json['createdDate'] == null ? '' : json['createdDate'],
      createdBy: json['createdBy'] == null ? '' : json['createdBy'],
      modifyDate: json['modifyDate'] == null ? '' : json['modifyDate'],
      modifyBy: json['modifyBy'] == null ? '' : json['modifyBy'],
      userID: json['userID'] == null ? '' : json['userID'],
      username: json['username'] == null ? '' : json['username'],
      password: json['password'] == null ? '' : json['password'],
      imageName: json['imageName'] == null ? '' : json['imageName'],
      totalproperty: json['totalproperty'] == null ? '' : json['totalproperty'],
    );
  }
}
