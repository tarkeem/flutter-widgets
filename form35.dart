

/* Add the  keys to your Info.plist file, located in <project root>/ios/Runner/Info.plist:*/




import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';


//image picker,color picker,fun useWhiteForeground

class forma35 extends StatefulWidget {
  const forma35({Key? key}) : super(key: key);

  @override
  State<forma35> createState() => _forma35();
}

class _forma35 extends State<forma35> {

  Color col=Colors.white;

  final ImagePicker _picker = ImagePicker(); //resposible for opening picker
  File? image_from_phone;  //it will recieve the returned value from xfile so it can be shown in program
  fetch()async
  {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);//in source identify the sourcr of photo(gallary,camera) ,this will return data of photo as xfile
    
   if(image==null)
   {
    return ;
   }

    setState(() {
      
    
    image_from_phone=File(image.path); //file function is from dart io library
});
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: col,
      ),
      body: Center(
        child: Column(
          children: [
            image_from_phone==null? Text('no pic is chosen'): Image.file(image_from_phone!),

            ElevatedButton(

              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(col)),
              
              onPressed: (){
              showDialog(context: context, builder: (_){
                return AlertDialog(
                  content:SingleChildScrollView (
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BlockPicker(
                          availableColors: [Colors.black,Colors.cyan,Colors.white],//default of this will show set of colors
                          pickerColor: col,
                         onColorChanged:(val){
                          setState(() {
                            col=val;
                          });
                          } 
                          ),
                        ColorPicker(
                          //colorHistory: [Colors.black,Colors.cyan],
                          
                          pickerColor: col,
                           onColorChanged: (val){
                          setState(() {
                            col=val;
                          });
                        })
                        //MultipleChoiceBlockPicker(pickerColors: pickerColors, onColorsChanged: onColorsChanged)
                        //MaterialPicker(pickerColor: pickerColor, onColorChanged: onColorChanged)
                      ],
                      
                    ),
                  ),
                );
              });
            },
             child: Text('colors',
             style: TextStyle(color: useWhiteForeground(col)?Colors.white:Colors.black),
             ),
             
             
             ),
             

          ],
        ),//image.file is widget that show photo by varible of type file
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){fetch();},
      ),
    );
    
  }
}