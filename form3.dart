import 'package:flutter/material.dart';




//variable as widget value,setstate



class forma3 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _forma();
    
  }

}

class _forma extends State<forma3>{
  Color a=Colors.brown;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: null,
        appBar: AppBar(backgroundColor: a,),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
          setState(() {   //just with statefullwajed
            a=Color.fromARGB(255, 0, 0, 0);
          });
          }
        , label:Text("click")
        ),
        
      ),
    );
  }

}