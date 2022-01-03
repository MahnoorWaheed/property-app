import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgentProfile extends StatelessWidget {
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 50.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      Text('Mehran Khan '),
                    ]),
                    Row(children: [
                      Text('@mehran11'),
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text('Agent'),
                    ]),
                  ],
                ),
              ),
              Icon(Icons.edit)
            ],
          ),
          Container(
            height: 450,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('Name: '), Text('Mehran Khan')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('Mobile No: '), Text('03349666228')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('Email: '), Text('mehran11@gmail.com')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('Postiion: '), Text('Agent')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('Age: '), Text('25')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('Username: '), Text('mehran11')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('Gender: '), Text('Male')],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
