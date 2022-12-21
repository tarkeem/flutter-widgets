import 'package:flutter/material.dart';

//flexiblespace,slivers

class forma26 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /*appBar: AppBar(
        flexibleSpace: Container(
          //child: Text('dwqkkkkkkkkkkkkkkkk'),
          //height: 1000, default and max height is appbar height
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black,Colors.pink]
            )
          )
        ),

        title: Text('dddyutrd'),
        centerTitle: true,

      ),*/
      body:CustomScrollView(
      slivers: [
        SliverAppBar(
        leading: Text('dad'),
        expandedHeight: 50, //not exist in appbar
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black,Colors.pink]
            )
          ),
          
        ),
        
        ),
        SliverList(delegate:SliverChildListDelegate([Text('hj')]))
      ],
    ) ,
    ); 
    
    
    
    
  }
}