import 'dart:html';

import 'package:flutter/material.dart';


//radio button,checkbox

class forma32 extends StatefulWidget {
  const forma32({Key? key}) : super(key: key);

  @override
  State<forma32> createState() => _forma32State();
}

class _forma32State extends State<forma32> {
   Object? grv;  //we dont give any value for grv that matche with value parameter of radio widget if we dont want any radi to be chacked initially
  int grv2=2;  //group value
  late Color col;
  late String tex;
  bool js=false;
  bool java=false;
  bool c_sharp=false;

  List li=['aa','bb','cc','dd','ee'];
  Object drob_butt='';

  String get choices
  {
    String txt='';
    if(js==true)
    {
      txt+='js\n';
    }
    if(java==true)
    {
      txt+='java\n';
    }
    if(c_sharp==true)
    {
      txt+='c_sharp\n';
    }
        return txt;

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:Container(
          color:grv2==1?Colors.grey:Colors.yellow ,
          child: Column(
            children: [
              radio_button2(1, 'grey', 'change to gray'),
              radio_button2(2, 'yellow', 'change to gray'),
              //Row(children: [radio_button2(1, 'red', 'change to red')],),
              //Text('$grv'), //it changes based on value parameter of the clicked button
              Text('5+5='),
              radio_button(10),
              radio_button(5),
              radio_button(9),
              Text('choose your language:'),
              check_box(1),
              check_box(2),
              check_box(3),
              ElevatedButton(
                onPressed: (){
                  showDialog(context: context, builder: (_){
                    return AlertDialog(
                      title: Text('thanks'),
                      content: Text('your choices:\n $choices'),
                    );
                  }
                  );
                },
                 child: Text('click')
                 ),

              
            
            ],
          ),
        ) ,
      ),
    );
    
  }

  CheckboxListTile check_box(int n) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
            title: n==1?Text('js'):(n==2?Text('jave'):Text('c_sharp')) ,
            value:n==1?js:(n==2?java:c_sharp) ,
            onChanged: (val){
              setState(() {
                
                if(n==1)
                {
                  js=val!;
                }
                else if(n==2)
                {
                  java=val!;
                }
                else
                {
                  c_sharp=val!;
                }
              

               });
            }
             );
  }

  message()
  {
     showDialog(context: context, builder: (cxt){

      return AlertDialog(

        title: Text('answer'),
        content: Container(
          //height: 300,
          color: col,
          child: Text(tex),

        ),
      );

    }
    
    
    
    );

  }

  Row radio_button(int val) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Padding(
          padding: EdgeInsets.all(5),
            child: Radio(
              value: val,
              groupValue: grv, //if groupvalue==value the button will be chacked
              onChanged: (n){   //when radio is  checked n will carry value equals value
                setState(() {
                  grv=n;      //so public grv will change in other radio button that have groupvalue as grv
                });
          
                col= val!=10?Colors.red:Colors.green;
                tex= val!=10?'wrong':'correct';
          
                message();
              }
                ),
          ),
              Text('$val')
        ],
      );
  }

  RadioListTile<int> radio_button2(int val,String s,String b)
  {
    return RadioListTile(
      title: Text(s),
      subtitle: Text(b),
      value: val,
      groupValue: grv2,
      onChanged: (n){
        setState(() {
          
        
        grv2=val; //n as int;  //instead of n
        });
      }
      );
  }
}