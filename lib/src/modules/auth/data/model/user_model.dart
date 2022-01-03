import 'dart:developer';

class User {
  String username, password, userID, roleName;

  User({
    this.userID,
    this.username,
    this.password,
    this.roleName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    log('JSONN =======  $json');
    return User(
      userID: json['userID'] == null ? '' : json['userID'],
      username: json['username'] == null ? '' : json['username'],
      password: json['password'] == null ? '' : json['password'],
      roleName: json['roleName'] == null ? '' : json['roleName'],
    );
  }

  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
        'userID': userID,
        'roleName': roleName,
      };
}
