import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//stack 

class forma8 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Stack(
          alignment: Alignment.center,
          children: [Container(
            alignment: Alignment.center,//useless

            width: 100,
            height: 100,
            color: Colors.black,

          ),
          Container(
             width: 50,
            height: 50,
            color: Color.fromARGB(255, 136, 33, 33),

          ),
          Container(
             width: 10,
            height: 10,
            color: Color.fromARGB(255, 42, 235, 4),

          )],
        ),
      ),
    ),
  );
  }

}