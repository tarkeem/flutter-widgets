import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//showdatepicker
class forma11 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _forma11();
  }

}

class _forma11 extends State<forma11>
{
   DateTime val=DateTime.utc(0,0,0);

   showdate()
  {
    return showDatePicker(
      context: context,
     initialDate: DateTime.utc(2022,1,1),
      firstDate: DateTime(2020),
       lastDate: DateTime(2025)).then((value){
        setState(() {
          val= value==null?DateTime(0):value;
        });
       });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body:Container(
          color: Colors.black,
          child: ElevatedButton(onPressed: () {

           //setState(() {}; not optimal position
           showdate();

            
          },child: Text('$val'),),
        ),
      );

  }

}