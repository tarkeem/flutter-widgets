import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//expanded,recieve data that is in shape of argument

class forma12 extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {

    final Map<Object?, Object?> ma = ModalRoute.of(context)?.settings.arguments as Map<Object?,Object?>;

    return Scaffold(

      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
         //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child:Container( //stretch based on the available area of father
            padding: EdgeInsets.all(30),//that means the block will become bigger and child is in center because of taling dist from all direction 
            color: Color.fromARGB(255, 226, 92, 92),
            child: Text('1'),
          ),
          flex: 1,
          ),
           Expanded(child:Container(
            color: Colors.blue,
            child: Text('2'),
             padding: EdgeInsets.all(30),
          ),
          flex: 1,
          ),
          Container(
            color: Colors.grey,
            child: Text("${ma['val2']}"),
             padding: EdgeInsets.all(30),
          )
          ],
      ),
    );
  }

}