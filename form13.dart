import 'package:flutter/material.dart';


//gardient,gridview
class forma13 extends StatelessWidget
{

  Widget elem (Color co,String st)
  {
    return Container(

      decoration: BoxDecoration(
        gradient: LinearGradient(//linear changing  in color
          colors: [co,Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight


        )

      ),

      child: Text(st),
      padding: EdgeInsets.all(30),//because the text starts from topleft it will aplly on left,top


    );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    
    body: GridView(
      gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 450,//determine how many element will display in one row
      crossAxisSpacing: 100, //space between elements
      mainAxisSpacing: 10,
      //childAspectRatio: ratio between width height
      ),
      children: [elem(Colors.cyan, '1'),elem(Color.fromARGB(255, 208, 255, 0), '1'),
      elem(Color.fromARGB(255, 98, 2, 252), '1'),elem(Color.fromARGB(255, 247, 0, 82), '1'),
      elem(Color.fromARGB(255, 252, 0, 210), '1'),elem(Color.fromARGB(255, 0, 255, 157), '1'),
      elem(Colors.cyan, '1')],
      ),

   );
  }

}