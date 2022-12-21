import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/form1.dart';

//TabBar,TabBarView

class forma15 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return  DefaultTabController(
      length: 2,
       child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [Tab(icon: Icon(Icons.ac_unit),text: "a",),
            Tab(icon: Icon(Icons.access_time_sharp),text: "b")
            ],
          ),
        ),
        body: TabBarView(children: [forma1('screen2'),Scaffold(
          body: Text('sa'),

        )]),
       
       )
       );

  }

}