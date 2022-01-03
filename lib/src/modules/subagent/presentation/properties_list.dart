import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PropertiesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[400],
          centerTitle: true,
          title: Container(
            height: 80,
            width: 150,
            foregroundDecoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icons/updatedlogo.png'),
                  fit: BoxFit.fill),
            ),
            //  color: Colors.red,
            //   child: Image.asset(''),
          ),
          actions: [
            Column(children: [
              Icon(
                Icons.person,
                size: 40.0,
              ),
              Text('Sub Agent')
            ]),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  //       border: Border.all(color: Colors.black),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      offset: Offset(0, 0),
                      blurRadius: 15.0,
                      spreadRadius: 8.0,
                    )
                  ]),
              child: ListTile(
                onLongPress: () {},
                hoverColor: Colors.green,
                //  dense: true,
                //    selected: true,
                leading: CircleAvatar(
                  radius: 30.0,
                ),
                title: Row(
                  children: [
                    Container(
                      width: 90.0,
                      child: Text(
                        '14 Marla house',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan[900]),
                      ),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '32000000000',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13.0, color: Colors.black),
                    ),
                    Text(
                      'Darmangi gardens',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13.0, color: Colors.black),
                    )
                  ],
                ),
                trailing: Container(
                  width: 170,
                  //  color: Colors.red,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      height: 30.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          'For Sale',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 35.0,
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35.0,
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  //       border: Border.all(color: Colors.black),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      offset: Offset(0, 0),
                      blurRadius: 15.0,
                      spreadRadius: 8.0,
                    )
                  ]),
              child: ListTile(
                onLongPress: () {},
                hoverColor: Colors.green,
                //  dense: true,
                //    selected: true,
                leading: CircleAvatar(
                  radius: 30.0,
                ),
                title: Row(
                  children: [
                    Container(
                      width: 90.0,
                      child: Text(
                        '14 Marla house',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan[900]),
                      ),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '32000000000',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13.0, color: Colors.black),
                    ),
                    Text(
                      'Darmangi gardens',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13.0, color: Colors.black),
                    )
                  ],
                ),
                trailing: Container(
                  width: 170,
                  //  color: Colors.red,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      height: 30.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.cyan[400],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          'For Rent',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 35.0,
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35.0,
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ));
  }
}
