import 'package:flutter/material.dart';




//floating ction button location,extended floating ction button,buttons,textstyle,iconbutton,button.icon
class forma2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home:Scaffold(
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton.extended(onPressed: ()=>print('hi'),
       label: Text("click"),
       icon: Icon(Icons.watch),
       shape:RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(50)) )
       ,splashColor: Color.fromARGB(255, 241, 0, 0),),
      appBar:AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leading:Text("page1") ,
        title:Text('app1') ,
        actions: [
          Text('icon'),
          Icon(Icons.access_time_filled_sharp)
        ],
      ) ,
      body: Container(
        color: Colors.deepOrange,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('haloo'),
              Text('olla',style: TextStyle(fontStyle: FontStyle.italic
              ,fontWeight: FontWeight.w600
              ,fontSize: 50,color: Colors.teal
              ,backgroundColor: Colors.black54,
              shadows: [Shadow(offset: Offset(10,50), color: Colors.black,blurRadius:5)
              ]
              ),
              )
              ,Text('wow')],

          ),
          Row(
            children: [Text('hi fr',style: TextStyle(wordSpacing:60,height: 5),),
            Text('hefa'),Icon(Icons.add_call)],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [IconButton(onPressed: (){}, icon: Icon(Icons.zoom_out_sharp)),
            Text('welcome',style: TextStyle(
              fontSize: 50,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.dashed,
            ),
            )
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: (){}, child: Text('button1')),
            ElevatedButton(onPressed: (){}, child: Text('button2')),
            OutlinedButton(onPressed: (){}, child: Text('button3')),

          ],
          ),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            TextButton.icon(
              style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: (){}, icon:Icon(Icons.zoom_out_rounded,color: Colors.black,),
             label: Text('1',style: TextStyle(color: Colors.black),)
             ),
             ElevatedButton.icon(onPressed: null, icon: Icon(Icons.accessibility),
              label: Text('2')
              )

          ],
          )
          ],
        ),
      ),
    ));
  }

}