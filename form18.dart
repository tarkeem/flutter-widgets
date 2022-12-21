// end of section 1
import 'dart:math';


import 'package:flutter/material.dart';



//transform.translate,transform.rotate,slider

class forma18 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
  return _forma18();
  }

}

class _forma18 extends State<forma18>
{
  double val=0.0;
  @override
  Widget build(BuildContext context) {
   
   return Scaffold(

    body: Center(
      child: Column(
        children: [
          Transform.rotate(   //
           angle:val ,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
          ),
          Text('the value=${val.round()}'),
          Slider(value: val, 
          onChanged: (double value){
            setState(() {
              val=value;
            });
          },
          label:'value',
          min: 0,
          max: 360,
           
          ),
        ],
      ),
    ),

   );
  
}
}