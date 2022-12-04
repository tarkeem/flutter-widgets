import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//texteditingconroller variable,textfiled, decoration of textfiled
class forma4 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _forma4();
  }

}

class _forma4 extends State<forma4>
{
  var tex='name';
  var corrol=TextEditingController();
  Color backgr=Colors.green;
  bool ispassvis=true;
  var passicon=Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView( 
          child: Container(
            height: 400,
            //padding: EdgeInsets.only(top: 100),
          margin: EdgeInsets.all(5),
          color: backgr, 
          child:  Column(

          children: [
            TextField(
              controller: corrol,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey,fontSize: 50),
              decoration: InputDecoration(
                enabledBorder:OutlineInputBorder(
                  borderSide:BorderSide(
                    width: 5,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ), 
                  borderRadius: BorderRadius.circular(50)
                  ) ,
                labelText: tex,
                hintText: 'enter name',
                hintStyle: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                ),
                labelStyle: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                )
              ),

            ),
             TextField(
              decoration: InputDecoration(
                labelText: 'passward',
                hintText: 'passaward',
                hintStyle: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                ),
                labelStyle: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                ),
                suffixIcon: IconButton(
                  icon:Icon(passicon) ,
                  onPressed: () {
                   setState(() {
                      ispassvis=!ispassvis;
                   passicon= ispassvis?Icons.visibility_off:Icons.visibility;
                   });
                  },
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: ispassvis,

            ),
             TextField(
              decoration: InputDecoration(
                labelText: 'email',
                hintText: 'email',
                hintStyle: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                ),
                labelStyle: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                )
              ),

              keyboardType: TextInputType.emailAddress,

            ),

          TextButton(
            onPressed: (){
             setState(() {
                tex=corrol.text;
             });

            }, 
            child: Text('click;'),
            )

          ],

        ),
        )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              backgr= backgr==Colors.green?Colors.white:Colors.green;
            });
          },
        backgroundColor: backgr,
        ),
      ),
    );
  }

}