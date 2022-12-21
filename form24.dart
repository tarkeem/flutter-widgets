import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//end of section 2

//SharedPreferences with contoller of textfield

class forma24 extends StatelessWidget
{
  var email=TextEditingController();
  var pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [TextField(
            controller: email,

          ),
          TextField(
            controller: pass,

          ),
          ElevatedButton
          (onPressed: ()async{
            SharedPreferences obj=await SharedPreferences.getInstance();

            obj.setString('e', email.text);
            obj.setString('p', pass.text);

          },
           child: Text('sign in')
           )
          ],
        ) ,

      ),
    );
  }

}