import 'package:flutter/material.dart';

//show dialog,alert dialog
class forma27 extends StatelessWidget {
  const forma27({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.2),
          context: context,
          builder: (cxt){ //cxt takes its value from context

            return AlertDialog(
              title: Text('hellllo'),
              content: Container(
                color: Colors.pink,
                height: 200,
                width: 400,
                child: Column(
                  children: [
                    Text('data'),
                    IconButton(onPressed: (){
                      Navigator.of(cxt).pop();
                    },
                     icon: Icon(Icons.abc_rounded))
                  ],
                ),
              ),
              backgroundColor: Colors.blue,

            );

          });
        },
      ),
    );
    
  }
}