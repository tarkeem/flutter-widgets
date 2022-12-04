import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//image.asset,image.network

class forma10 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              height: 100,
              width: 400,
              child: Image.network("https://image.shutterstock.com/image-photo/suraj-mukhi-flower-my-great-260nw-1467178388.jpg",
              fit: BoxFit.contain,
              ),
            )
            
            
,Image.asset('assets/images/s1.jpg')
            ],
          ),
        ),

      ),
    );

  }

  

}