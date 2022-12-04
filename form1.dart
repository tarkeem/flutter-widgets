import 'package:flutter/material.dart';


class forma1 extends StatelessWidget
{

   //floatingactionbutton,appbar,showmodalbottomsheet
  var val_from_anothrt_screen;

  forma1(this.val_from_anothrt_screen);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed:() {

       showModalBottomSheet(context: context, builder:(__){

        return Container(child:Text('asdd',style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 139, 96, 132)),) ,
        width: 50,
        height: 50,
        );
      } );  
      } ,
      child: Text('click here'),),
      appBar: AppBar(
        leading:const Text("daw") ,
        title:const Icon(Icons.accessibility_new,color: Colors.black,) ,
        actions:const [
          Icon(Icons.abc)
        ],
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 235, 8, 83),

      ),
      body:Text("hello this info fron another screen:${val_from_anothrt_screen}"),

    );

    
   
  }

}