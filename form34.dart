import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';


//drop down button(error),exbandable list,list tile,divider,marquee

class forma34 extends StatefulWidget {
  const forma34({Key? key}) : super(key: key);

  @override
  State<forma34> createState() => _forma34State();
}

class _forma34State extends State<forma34> {
   List li=['aa','bb','cc','dd','ee'];
  int drob_butt=0;

  @override
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(),
    body: Center(
      child: Column(
        children: [

          ExpansionTile(
            collapsedBackgroundColor: Colors.yellow,
            backgroundColor: Colors.pink,
            title: Text('list'),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.read_more),


            children: [
              Card(
                surfaceTintColor: Color.fromARGB(255, 153, 0, 255),
                color: Colors.blue,
                child: ListTile(
                selectedColor: Color.fromARGB(255, 219, 7, 7),
                title: Text('ad'),
                subtitle: Text('click here'),
                onTap: (){},
                leading: Icon(Icons.read_more),
                trailing:  Icon(Icons.arrow_back),
                ),
              ),
              ListTile(title: Text('ad'), onTap: () => null,selectedColor: Colors.black,),
              ListTile(title: Text('ad'),),
              ListTile(title: Text('ad'),),
            ],
                  
                  ),

            Divider(color: Colors.black,thickness: 20, height: 100,),

           /*DropdownButton(
                value: drob_butt,
                items:[ 
                DropdownMenuItem(value:drob_butt,child: Text('a'),),
                DropdownMenuItem(value:drob_butt,child: Text('a'),),
                ],//try pass list here
                 onChanged: (val){
                  drob_butt=val as int;

                 }
                 ),*/
                 SizedBox(height: 10,),

            SizedBox(
              height: 100,
              width: 250,
              child: Card(
                color: Color.fromARGB(255, 230, 34, 34),
                child: Marquee(
                  text:'i love you',
                  style: TextStyle(fontSize: 20,color: Colors.blue),
                  textDirection: TextDirection.rtl,
                  blankSpace: 10,
                  scrollAxis: Axis.vertical,
                  velocity: 100,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //accelerationDuration: Duration(milliseconds: 100 ),
                  pauseAfterRound: Duration(seconds: 10),
                  startAfter: Duration(seconds: 10),

                 ),
              ),
              
              
              )
        ],
      ),
    ),
  );    
    
  }
}

