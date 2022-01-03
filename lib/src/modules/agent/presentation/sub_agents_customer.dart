import 'package:flutter/material.dart';

class SubAgentCustomerListScreen extends StatelessWidget {
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
                leading: Icon(
                  Icons.person,
                  size: 50.0,
                ),
                title: Row(
                  children: [
                    Container(
                      width: 90.0,
                      child: Text(
                        'Ali',
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
                      'ali112@gmail.com',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13.0, color: Colors.black),
                    ),
                    Text(
                      '03001212121',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13.0, color: Colors.black),
                    )
                  ],
                ),
                trailing: Container(
                  width: 170,
                  //color: Colors.red,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Peshawar',
                          style: TextStyle(fontWeight: FontWeight.bold),
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
