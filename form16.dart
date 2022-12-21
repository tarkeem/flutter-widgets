import 'package:flutter/material.dart';



//bottom navigation bar
class forma16 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _forma16();
  }

}

class _forma16 extends State<forma16>
{

List <Widget> li=[ //if it need dynamic appbar title 1.make list of map 2.map involves widget,title 3.pass the values
  Text('hi'),Text('welcome')
];

  int st=0;//this refers to page
  void check_state(int n)
  {
    setState(() {
      st=n;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('sa'),),
      body:Center(
        child: li[st],
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        currentIndex: st,
        type: BottomNavigationBarType.shifting, //shift turn off background color,
        onTap: (value) => check_state(value),//==check_state
        items: [BottomNavigationBarItem( backgroundColor: Colors.black,label: 'hi',icon: Icon(Icons.zoom_in)),
        BottomNavigationBarItem( backgroundColor: Colors.black,label: 'hello',icon: Icon(Icons.zoom_out_map))]
        ),

    );
  }

}