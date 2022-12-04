import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/class1.dart';




//how to use function or class from another file
class forma5 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _forma5();//dont forget ()
  }

}

class _forma5 extends State<forma5>
{
  var age=0;
  var inp=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: inp,
              decoration: InputDecoration(
                labelText: 'year'
              ),
            ),
            Text('your age is:$age '),
            IconButton(onPressed: (){
              setState(() {
                age=calac.cal(int.parse(inp.text));
              });
            }, icon: Icon(Icons.ac_unit))
          ],
        ),
      ),
    );
  }

}