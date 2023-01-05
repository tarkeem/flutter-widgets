import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';


//flushbar

class forma29 extends StatelessWidget {
  const forma29({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Icon(Icons.ac_unit),
          onPressed: () 
          {
            Flushbar(
              icon: Icon(Icons.access_alarm_rounded),
              mainButton: IconButton(icon: Icon(Icons.abc_outlined,color:Colors.white ,),onPressed: (){},),
              flushbarPosition: FlushbarPosition.BOTTOM,

              title: 'asdw',
              message: 'gtry',

            ).show(context);

          }
        
        ),
      ),
    );
    
    
  }
}