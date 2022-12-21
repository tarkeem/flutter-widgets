import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//sharedpreferences(set),initstate
senddata()async
{
  SharedPreferences obj=await SharedPreferences.getInstance();//since it is future<type> so using await to turn it into <type>
  obj.setString('name', 'tarek mohamed');
  obj.setInt('id', 123);
  obj.setStringList('gender',['man', 'woman']);
}


class forma22 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    
    return _forma22();
  }

}

class _forma22 extends State<forma22>
{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    senddata();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child:ElevatedButton(
          onPressed: (){
            Navigator.of(context).pushNamed('/x');
          },
          child: Text('click'),
        ),
      ),
    );
  }

}