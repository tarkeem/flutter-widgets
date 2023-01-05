import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';



//snackbar

class forma28 extends StatelessWidget {
  const forma28({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

            final snack=SnackBar(
              action: SnackBarAction(
                label: 'ada',
                onPressed: () {
                  
                },
              ),
              duration: Duration(seconds: 4),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              content: Text('dawa'),
            );
          ScaffoldMessenger.of(context).showSnackBar(snack); //you can put snack class here direct
        },
        child: Icon(Icons.access_alarm),
        
        ),
      ),
    );
    
  }
}