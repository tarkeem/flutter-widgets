import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';


//start of section 3

//toast bar

class forma25 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showToast(
            'helloooooooo',
          context: context,
          backgroundColor: Color.fromARGB(95, 51, 226, 104),
          textStyle: TextStyle(fontSize: 20),
          duration:Duration(seconds: 2) ,
          position: StyledToastPosition(align: Alignment.bottomCenter,offset:0));
        },
      ),
    );
    
  
}
}
