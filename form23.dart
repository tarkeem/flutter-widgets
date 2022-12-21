import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


//SharedPreferences(get,remove)

deletdata()async
{
  SharedPreferences obj3=await SharedPreferences.getInstance();
  obj3.remove('name');
  obj3.remove('id');
  obj3.remove('gender');
  

}

class forma23 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _forma23();
  }

}

class _forma23 extends State<forma23>
{
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    deletdata();
  }
  String? name='';
  int? id=0;
  List? gender=['',''];
  recievedata()async
  {
    SharedPreferences obj2=await SharedPreferences.getInstance();
    setState(() {
      name=obj2.getString('name');
      id=obj2.getInt('id');
//gender=obj2.getStringList('gender');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          Text("name:$name"),
          Text('id:$id'),
          Text('gender:${gender![0]}'),//check null
          ElevatedButton(onPressed: (){recievedata();},
           child: Text('recieve data')),
           ElevatedButton(onPressed: (){},
           child: Text('delete data')),
          ],
        ),
      ),
    );
  }

}