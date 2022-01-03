import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xtremessoft/src/helpers/utils/utils.dart';
import 'package:xtremessoft/src/modules/auth/controller/controller.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  AuthController authController;

  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    authController = Get.put(AuthController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            //   color: Colors.red,

            child: Stack(children: [
              Container(
                height: Utility.screenHeight(context) * 1,
                // color: Colors.red,
                // foregroundDecoration: BoxDecoration(
                //   image: DecorationImage(
                //       image: AssetImage('assets/icons/home.png'),
                //       fit: BoxFit.fill),
                //  ),

                child: Image(
                  image: AssetImage(
                    'assets/icons/home.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: Utility.screenHeight(context) * 0.12,
                      width: Utility.screenWidth(context) * 0.25,
                      foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/logoicon.png'),
                            fit: BoxFit.fill),
                      ),
                      // color: Colors.red,
                      //   child: Image.asset(''),
                    ),
                    Container(
                      height: Utility.screenHeight(context) * 0.3,
                      width: Utility.screenWidth(context) * 0.8,
                      foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/icon.png'),
                            fit: BoxFit.fill),
                      ),
                      // color: Colors.red,
                      //   child: Image.asset(''),
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Container(
                            height: Utility.screenHeight(context) * 0.075,
                            width: Utility.screenWidth(context) * 0.65,
                            //  margin: EdgeInsets.only(top: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              //   color: Colors.cyan[900],
                              // color: Colors.red,
                              //   border: Border.all(color: Colors.red)
                            ),
                            child: Container(
                              margin: EdgeInsets.only(top: 10.0),
                              //   color: Colors.green,
                              child: TextFormField(
                                autocorrect: false,
                                enableInteractiveSelection: true,

                                //
                                controller: authController.usernameController,
                                onChanged: (value) {},
                                // ignore: missing_return
                                validator: (v) {
                                  bool check = authController.validatEmail();
                                  if (authController
                                              .usernameController.text.length ==
                                          0 ||
                                      check == true) {
                                    return 'Invalid username';
                                  }
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    // labelText: 'Phone number or Email',
                                    //   enabledBorder: InputBorder(borderSide: ),
                                    // contentPadding:
                                    //     EdgeInsets.only(left: 10.0, top: 10.0),
                                    hintText: 'Username',
                                    hintStyle: TextStyle(
                                      color: Colors.cyan[900],
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            height: Utility.screenHeight(context) * 0.065,
                            width: Utility.screenWidth(context) * 0.65,
                            margin: EdgeInsets.only(top: 15.0),
                            //   padding: EdgeInsets.only(bottom: 3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              //   color: Colors.cyan[900],
                              //       border: Border.all(color: Colors.red)
                            ),
                            child: TextFormField(
                              autocorrect: false,
                              enableInteractiveSelection: true,
                              controller: authController.passwordController,
                              onChanged: (value) {},
                              // ignore: missing_return
                              validator: (v) {
                                if (authController
                                        .passwordController.text.length ==
                                    0) {
                                  return 'Password is incorrect';
                                }
                              },
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              obscuringCharacter: '*',

                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: 'Phone number or Email',
                                //  enabledBorder: InputBorder.none,
                                // contentPadding:
                                //     EdgeInsets.only(left: 10.0, top: 10.0),
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.cyan[900]),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () async {
                              print('Tapped on login');
                              if (_formkey.currentState.validate()) {
                                print('form valdated');
                                print('Tapped on signin');
                                await authController.submit();
                              }
                            },
                            child: Container(
                              height: Utility.screenHeight(context) * 0.06,
                              width: Utility.screenWidth(context) * 0.3,
                              decoration: BoxDecoration(
                                color: Colors.cyan[900],
                                //   color: Colors.blue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Text(
                            'or',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'don\'t have an account? SIGNUP',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              GetBuilder<AuthController>(
                builder: (_) => authController.authenticating == false
                    ? SizedBox()
                    : Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.black12.withOpacity(0.1),
                        child: Center(child: CircularProgressIndicator()),
                      ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

// class SignInScreen extends StatefulWidget {
//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   AuthController authController;

//   final _formkey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     authController = Get.put(AuthController());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Stack(children: [
//             Column(children: [
//               Column(children: [
//                 Container(
//                   //  color: Colors.red,
//                   height: Utility.screenHeight(context) * 0.5,
//                   width: Utility.screenWidth(context) * 1,
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(left: 20.0, right: 20.0),
//                           child: Form(
//                             key: _formkey,
//                             child: Column(children: [
//                               Container(
//                                 // color: Colors.red,
//                                 child: Row(
//                                     // mainAxisAlignment:
//                                     //     MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           children: [
//                                             GestureDetector(
//                                                 onTap: () {
//                                                   Get.back();
//                                                 },
//                                                 child: Icon(Icons.arrow_back))
//                                           ]),
//                                       SizedBox(
//                                         width: 100,
//                                       ),
//                                       Center(
//                                         child: Text(
//                                           'Log in',
//                                           style: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 30),
//                                         ),
//                                       )
//                                     ]),
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               TextFormField(
//                                 autocorrect: false,
//                                 enableInteractiveSelection: true,
//                                 controller: authController.emailController,
//                                 onChanged: (value) {},
//                                 // ignore: missing_return
//                                 validator: (v) {
//                                   bool check = authController.validatEmail();
//                                   if (authController
//                                               .emailController.text.length ==
//                                           0 ||
//                                       check == false) {
//                                     return 'Enter phone number or Email';
//                                   }
//                                 },
//                                 keyboardType: TextInputType.emailAddress,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: 'Phone number or Email',
//                                   hintText: 'Phone number or Email',
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               TextFormField(
//                                 // ignore: missing_return
//                                 validator: (v) {
//                                   if (authController
//                                           .passwordController.text.length ==
//                                       0) {
//                                     return 'Enter password';
//                                   }
//                                 },
//                                 autocorrect: false,
//                                 enableInteractiveSelection: true,
//                                 keyboardType: TextInputType.visiblePassword,
//                                 obscureText: true,
//                                 obscuringCharacter: '*',
//                                 controller: authController.passwordController,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   labelText: 'Password',
//                                   hintText: 'Password',
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               GestureDetector(
//                                 onTap: () async {
//                                   if (_formkey.currentState.validate()) {
//                                     print('Tapped on signin');
//                                     await authController.signIn();
//                                   }
//                                 },
//                                 child: Container(
//                                   height: Utility.screenHeight(context) * 0.08,
//                                   width: Utility.screenWidth(context) * 0.9,
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                       color: Colors.grey,
//                                     ),
//                                     //   color: Colors.blue,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Center(
//                                     child: Text(
//                                       'Log In',
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ]),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             print('tapped on want an account');
//                             Get.to(() => SignUpScreen());
//                           },
//                           child: Text(
//                             'don\'t have an account? SIGNUP',
//                             style: TextStyle(
//                                 fontSize: 15, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ]),
//                 ),
//               ]),
//               SizedBox(
//                 height: 5,
//               ),
//             ]),
//             //
//           ]),
//         ),
//       ),
//     );
//   }
// }
