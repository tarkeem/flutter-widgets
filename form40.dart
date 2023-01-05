import 'dart:ui';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/form39.dart';


//splash screen

class forma40 extends StatefulWidget {
  const forma40({Key? key}) : super(key: key);

  @override
  State<forma40> createState() => _forma40State();
}

class _forma40State extends State<forma40> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: EasySplashScreen(
        logo:Image.asset('assets/images/s1.jpg'),
        navigator: forma39(),
        durationInSeconds: 5,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        logoSize: 100,
        showLoader: true,
        title: Text('transfer',style: TextStyle(color: Colors.white),),
        loadingText: Text('loading....',style: TextStyle(color: Colors.white)),
        loaderColor: Color.fromARGB(255, 255, 0, 140),

        ),
        

    );
    
  }
}