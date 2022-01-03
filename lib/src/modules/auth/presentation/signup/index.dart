import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtremessoft/src/helpers/utils/utils.dart';
import 'package:xtremessoft/src/modules/auth/controller/controller.dart';
import 'package:xtremessoft/src/modules/auth/presentation/signin/index.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();
  AuthController authController;

  @override
  void initState() {
    authController = Get.put(AuthController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Column(children: [
              Column(children: [
                Container(
                  //  color: Colors.red,
                  height: Utility.screenHeight(context) * 1,
                  width: Utility.screenWidth(context) * 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          height: Utility.screenHeight(context) * 0.6,
                          child: Form(
                            key: _formkey,
                            child: Column(children: [
                              Container(
                                // color: Colors.red,
                                child: Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Icon(Icons.arrow_back),
                                            )
                                          ]),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Center(
                                        child: Text(
                                          'Sign up',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      )
                                    ]),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                autocorrect: false,
                                enableInteractiveSelection: true,
                                controller: authController.usernameController,
                                onChanged: (value) {},
                                // ignore: missing_return
                                validator: (v) {
                                  bool check = authController.validatEmail();
                                  if (authController
                                          .usernameController.text.length ==
                                      0) {
                                    return 'Enter phone number or Email';
                                  }
                                  if (check == false) {
                                    return 'Invalid Email';
                                  }
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  //labelText: 'Phone number or Email',
                                  hintText: 'Email',
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                // ignore: missing_return
                                validator: (v) {
                                  if (authController
                                          .passwordController.text.length ==
                                      0) {
                                    return 'Enter password';
                                  }
                                },
                                autocorrect: false,
                                enableInteractiveSelection: true,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                obscuringCharacter: '*',
                                controller: authController.passwordController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  //labelText: 'Password',
                                  hintText: 'Password',
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                // ignore: missing_return
                                validator: (v) {
                                  if (authController.confirmPasswordController
                                              .text.length ==
                                          0 ||
                                      authController
                                              .confirmPasswordController.text !=
                                          authController
                                              .passwordController.text) {
                                    return 'The passwords do not match';
                                  }
                                },
                                autocorrect: false,
                                enableInteractiveSelection: true,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                obscuringCharacter: '*',
                                controller:
                                    authController.confirmPasswordController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Confirm Password',
                                  hintText: 'Confirm Password',
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  if (_formkey.currentState.validate()) {
                                    print('Tapped on Signup');
                                    await authController.signUp();
                                  }
                                },
                                child: Container(
                                  height: Utility.screenHeight(context) * 0.08,
                                  width: Utility.screenWidth(context) * 0.9,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    //   color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('tapped on already have account');
                            Get.back();
                          },
                          child: Text(
                            'already have an account? LOGIN',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                ),
              ]),
              SizedBox(
                height: 5,
              ),
            ]),
            // GetBuilder<AuthenticationController>(
            //   builder: (_) => authenticationController.authenticating == false
            //       ? SizedBox()
            //       : Container(
            //           width: MediaQuery.of(context).size.width,
            //           height: MediaQuery.of(context).size.height,
            //           color: Colors.black12.withOpacity(0.1),
            //           child: Center(child: CircularProgressIndicator()),
            //         ),
            // ),
          ]),
        ),
      ),
    );
  }
}
