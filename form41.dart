import 'package:flutter/material.dart';

//need to check
//interactive viewer
class forma41 extends StatefulWidget {
  const forma41({Key? key}) : super(key: key);

  @override
  State<forma41> createState() => _forma41State();
}

class _forma41State extends State<forma41> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: InteractiveViewer
            (
              constrained: true,//allow the image to take the real size
              panEnabled: true, //can zom the photo but no go any direction
              maxScale: 2.0,
              minScale: 0.1,
              scaleEnabled: false,

              child: Image.asset('assets/images/s1.jpg',fit: BoxFit.cover,)
                ),
      ),
    );
    
  }
}