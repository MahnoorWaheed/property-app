import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xtremessoft/src/modules/admin/presentation/index.dart';
import 'package:xtremessoft/src/modules/agent/presentation/index.dart';
import 'package:xtremessoft/src/modules/app/home.dart';
import 'package:xtremessoft/src/modules/auth/data/model/user_model.dart';
import 'package:xtremessoft/src/modules/auth/presentation/signin/index.dart';
import 'package:xtremessoft/src/modules/subagent/presentation/index.dart';

class AuthController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  static String type = 'login';
  SharedPreferences setPrefs;
  SharedPreferences getPrefs;
  // final AuthController _authController = Get.put(AuthController());
  bool authenticating = false;
  User user;

  Future<bool> signIn({Map credentials}) async {
    authenticating = true;
    update();

    try {
      final request = await http.post(
        Uri.parse('https://xtremesproperty.com/services/Xtreme/multipart/'),
        body: credentials,
      );

      var decode = await json.decode(request.body);

      var jsonDecode = await json.decode(decode);

      if (request.statusCode == 200) {
        user = User.fromJson(jsonDecode);

        setPrefs = await SharedPreferences.getInstance();
        setPrefs.setString('currentUser', jsonEncode(user.toJson()));

        authenticating = false;
        update();

        if (user.roleName == 'Super Admin') {
          print('Navigate to Super Admin screen');
          clearEditors();
          Get.off(() => AdminScreen());
          update();

          return true;
        } else if (user.roleName == 'Agent') {
          print('Navigate to Agent screen');
          clearEditors();
          Get.off(() => AgentScreen());
          update();
          return true;
        } else if (user.roleName == 'Sub Agent') {
          print('Navigate to Sub agent screen');
          clearEditors();
          Get.off(() => SubAgentScreen());
          update();
          return true;
        } else {
          print('No screen found for such user');
          return false;
        }

        //
        //    Get.to(() => HomeScreen());

      } else {
        Get.snackbar('Error signing in:', 'Invlid credentials');
      }
    } catch (e) {
      // Get.snackbar('Error signing in:', '$e');
      //   print(e);
      user = null;
      print('USER IN CATCH:::::: $user');
      authenticating = false;
      update();
      print('INSIDE CATCH:::::::::::::: $e');

      return false;
    }

    // Get.to(() => PropertiesScreen());

    // SnackBar(
    //   backgroundColor: Colors.red,
    //   content: Text('SignIn successfully'),
    //   duration: Duration(seconds: 5),
    // );

    authenticating = false;
    update();
    return false;
  }

  // ignore: missing_return
  Future<User> getCurrentUser() async {
    getPrefs = await SharedPreferences.getInstance();
    User currentUser;

    print('GET PREFSS:::::::::::: ${getPrefs.getString('currentUser')}');

    if (getPrefs.getString('currentUser') != null) {
      var prefsResult = await jsonDecode(getPrefs.getString('currentUser'));
      currentUser = User.fromJson(prefsResult);
    }

    if (user == null) {
      user = currentUser;
    } else {
      user = user;
    }

    // if (user == null) {
    //   print('USER::::::::: $user');
    //   user = currentUser;

    //   print('CURRENT USER::::::::::: $currentUser');

    //   print('USER AFTER ASSIGNING CURRENT USER::::::: $user');
    //   if (user.roleName == 'Super Admin') {
    //     print('Navigte to Admin screen');
    //     Get.to(() => AdminScreen());
    //   } else {
    //     print('Error');
    //   }

    //   print('AT LAST OF IF');
    // } else {
    //   print('INSIDE ELSE');
    //   user = user;
    // }

    // if(user == null)
    // {
    //   user =
    // }
  }

  Future<void> submit() async {
    final authResults = await signIn(credentials: {
      'type': 'login',
      'username': usernameController.text,
      'password': passwordController.text,
    });

    if (authResults == false) {
      Get.snackbar('Error signing in', 'Invalid credentials');
    }
  }

  Future<void> signUp() async {
    // authenticating = true;
    update();
    print('User successfully signedup');

    authenticating = false;
    update();
  }

  bool validatEmail() {
    print('Inside validateEmail');
    if (usernameController.text.contains('@') ||
        usernameController.text.contains('.com')) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> logOut() async {
    user = null;
    await getPrefs.clear();

    update();
    Get.reset();
    Get.offAll(() => HomeScreen());
  }

  void clearEditors() {
    usernameController.clear();
    passwordController.clear();
  }
}
