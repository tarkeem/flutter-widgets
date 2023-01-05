import 'package:flutter/material.dart';
import 'package:flutter_application/class3.dart';
import 'package:flutter_application/form1.dart';
import 'package:flutter_application/form10.dart';
import 'package:flutter_application/form11.dart';
import 'package:flutter_application/form12.dart';
import 'package:flutter_application/form13.dart';
import 'package:flutter_application/form14.dart';
import 'package:flutter_application/form15.dart';
import 'package:flutter_application/form16.dart';
import 'package:flutter_application/form18.dart';
import 'package:flutter_application/form2.dart';
import 'package:flutter_application/form20.dart';
import 'package:flutter_application/form21.dart';
import 'package:flutter_application/form22.dart';
import 'package:flutter_application/form23.dart';
import 'package:flutter_application/form24.dart';
import 'package:flutter_application/form25.dart';
import 'package:flutter_application/form26.dart';
import 'package:flutter_application/form27.dart';
import 'package:flutter_application/form28.dart';
import 'package:flutter_application/form29.dart';
import 'package:flutter_application/form3.dart';
import 'package:flutter_application/form30.dart';
import 'package:flutter_application/form31.dart';
import 'package:flutter_application/form32.dart';
import 'package:flutter_application/form33.dart';
import 'package:flutter_application/form34.dart';
import 'package:flutter_application/form35.dart';
import 'package:flutter_application/form36.dart';
import 'package:flutter_application/form37.dart';
import 'package:flutter_application/form38.dart';
import 'package:flutter_application/form39.dart';
import 'package:flutter_application/form4.dart';
import 'package:flutter_application/form40.dart';
import 'package:flutter_application/form41.dart';
import 'package:flutter_application/form42.dart';
import 'package:flutter_application/form43.dart';
import 'package:flutter_application/form5.dart';
import 'package:flutter_application/form6.dart';
import 'package:flutter_application/form7.dart';
import 'package:flutter_application/form8.dart';
import 'package:flutter_application/form9.dart';
import 'package:shared_preferences/shared_preferences.dart';



  
 void main(){


   runApp(MyApp());

}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      routes:{
        //'/x':(context) =>forma23(), related to forma14
        '/x':(context) =>forma23(),
        '/y':(context) =>forma40(),
        },
      home:forma20() ,
    );
  }

 

}

  




























  /*
 
  related to forma42

  void main()async {
  
  bool start=await start_page();
  print(start);

   runApp(start==false?MyApp():forma3());

}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      routes:{
        '/x':(context) =>forma23(),
        '/y':(context) =>forma40(),
        },
      home:forma42() ,
    );
  }

 

}

  start_page()async async function returns future value
  {
    SharedPreferences obj=await SharedPreferences.getInstance();
    return obj.getBool('is_clicked')==null?false:true;
  }
  
  */