import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//pop wit value

class forma17 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.of(context).pop("wwe"); //related to forma14
        } ,),
    );
  }

}