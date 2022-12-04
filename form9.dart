import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/class2.dart';

//dealing with list,card,showbottmsheet,impor fontsize

class forma9 extends StatelessWidget
{
  List  li=[info('tarek', 1, DateTime.utc(2002,8,9)),//dont need here for object name as it is list so the index is obj name
  info('lana', 2, DateTime.utc(2002,10,7)),
  info('haia ss', 1, DateTime.utc(2006,7,2)),
  ];
  @override
  Widget build(BuildContext context) {         //listview ==column + single scroll
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (_){ 
              return ListView(
                children: li.map((e) => 
                Card(
                  child: Text(e.name,style: TextStyle(fontFamily: 'OpenSans',fontSize: 25),),
                )
                
                ).toList(),
              );
            });
          },),
        body:Container(
          alignment: Alignment.topLeft,
          width: double.infinity,
          color: Colors.black,
          child: Column(
          children: [...li.map((e) {
            return Card(color: Color.fromARGB(255, 172, 55, 55),child:Column(
              children: [ Text("name=${e.name}"), Text("name=${e.id}"), Text("name=${e.date}")],
            )
            );
          }).toList()],
        )) ,
      ),
    );
  }

}