import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var st=TextStyle(fontSize: 10,color: Colors.green);

class specmarg extends StatelessWidget
{
  String tex;
  TextStyle s;

  specmarg(this.tex,this.s);

  @override
  Widget build(BuildContext context) { //is exicuted autumatically in widget class
    return Text(tex,style:s,);
  }

}

Widget fun(String a)
{
  return Text(a,style: st,);
}

