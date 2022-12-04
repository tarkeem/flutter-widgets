import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/class3.dart';


//function as widget,class as widget
class forma6 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: Column(
          children: [
          Container(
            color: Colors.blue,
            child: Text('aaaaaaaaa'),

          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.orange,
            child: Text('bbbbbbbbb'),
          ),
          Padding(
            padding:EdgeInsets.all(10),
            child: Text('ccccccc'), 
            ),
          specmarg("dddddd", st),
          fun('sdwwww'),
          ],
        ),
      ),
    );
  }

}