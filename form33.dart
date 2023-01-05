import 'package:flutter/material.dart';

//switch with theme propirty


class forma33 extends StatefulWidget {
  const forma33({Key? key}) : super(key: key);

  @override
  State<forma33> createState() => _forma33State();
}

class _forma33State extends State<forma33> {
  ThemeMode thm=ThemeMode.light;
  bool is_on=false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
        canvasColor: Color.fromARGB(255, 219, 4, 4)
        

      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        canvasColor: Color.fromARGB(255, 0, 0, 0)
      ),

      themeMode: thm,

      home: Scaffold(
        appBar: AppBar(),
        body: Switch(
          value: is_on,
          onChanged: (val){
            setState(() {
              
            is_on=val;
            
            thm= is_on==true?ThemeMode.dark:ThemeMode.light;
             });
          },
        ),
      ),

    );   
    
  }
}
