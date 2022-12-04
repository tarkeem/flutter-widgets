import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//about container

class forma7 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.bottomCenter,  //alligmment only aplly on child, equal main/corss axis aligment in row and column
          width: 200,  //width and height default are defined based on content
          height: 400,
          color: Colors.red,
          child: Container(
            alignment: Alignment.center,
            width: 100,
            height: 350,
            color: Color.fromARGB(255, 200, 255, 0),
            child: Text('as'),
          ),
        ),
      ),

    );

  }

}