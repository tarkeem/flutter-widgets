import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';


//selectable text,text overflow, wrab soft

class forma30 extends StatelessWidget {
  const forma30({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 40,
              width:200 ,
              color: Colors.green,
              child: SelectableText(
                'asdefgsfsfdgdg',
                toolbarOptions: ToolbarOptions(
                  copy: false
                ),
                showCursor: true,
                cursorColor: Color.fromARGB(255, 226, 5, 171),
                style: TextStyle(fontSize: 20),
                ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.green,
              width: 200,
              height: 40,
              child: Text('aaaaaaaaaaaaaaaaaaaaggggggggggggggggaaaaaaaaaaaaaa \n fgdg',overflow: TextOverflow.clip,softWrap: false,),
            ),
            SizedBox(height: 10,),
             Container(
              color: Colors.green,
              width: 200,
              height: 40,
              child: Text('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',overflow: TextOverflow.ellipsis,),
            ),
            SizedBox(height: 10,),
             Container(
              color: Colors.green,
              width: 200,
              height: 40,
              child: Text('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',overflow: TextOverflow.fade,softWrap: false,),
             ),
            SizedBox(height: 10,),
             
             Container(
              color: Colors.green,
              width: 200,
              height: 40,
              child: Text('aaaaaaaaaaaaaaaaagrgdgdgdgdfgdfgaaaaaaaaaaaaaajjjjjjjjjjjjjjjjjjjaaaaaaaaaaaaprxqweg',overflow: TextOverflow.visible,),
             
            ),
            SizedBox(height: 10,),
             Container(
              color: Colors.green,
              width: 200,
              height: 40,
              child:SingleChildScrollView (child: Text('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadfgretdcxcxgdfgtgthfthweqwewrrwer',)),
            ),
          ],
        ),
      ),
    );
    
  }
}