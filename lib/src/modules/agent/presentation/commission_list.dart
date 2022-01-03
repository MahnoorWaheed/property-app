import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgentCommissionListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[400],
        centerTitle: true,
        title: Icon(
          Icons.home,
          size: 70.0,
        ),
        actions: [
          Column(children: [
            Icon(
              Icons.person,
              size: 40.0,
            ),
            Text('Agent')
          ]),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 30.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                  )
                ]),
            child: Card(
              margin: EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),

              shadowColor: Colors.red,
              //  borderOnForeground: true,
              //shape: Border.all(color: Colors.black),
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150.0,
                    child: Text(
                      '10 Marla house in peshawar',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[900]),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    child: Text(
                      'Rs:37000000000',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    child: Text(
                      '2%',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 60.0,
                    child: Text(
                      'Pending',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 30.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                  )
                ]),
            child: Card(
              margin: EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),

              shadowColor: Colors.red,
              //  borderOnForeground: true,
              //shape: Border.all(color: Colors.black),
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150.0,
                    child: Text(
                      '10 Marla house in peshawar',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[900]),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    child: Text(
                      'Rs:37000000000',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    child: Text(
                      '2%',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 60.0,
                    child: Text(
                      'Pending',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
