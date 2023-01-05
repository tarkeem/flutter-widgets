import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/form3.dart';
import 'package:shared_preferences/shared_preferences.dart';

//solve sharedprefrences part
//view page,builder

class data
{
  String title,subtitle,imagepath;
  IconData icon;

  data(this.icon,this.imagepath,this.subtitle,this.title);
  

}

List elements=[
  data(Icons.add, 'images/q1.jpg', 'this is page1', ' page 1'),
  data(Icons.mic, 'images/q2.jpg', 'this is page1', ' page 2'),
  data(Icons.ice_skating, 'images/q3.jpg', 'this is page1', ' page 3'),
  data(Icons.icecream, 'images/q4.jpg', 'this is page1', ' page 4'),
  
  ];
class forma42 extends StatefulWidget {
  const forma42({Key? key}) : super(key: key);

  @override
  State<forma42> createState() => _forma41State();
}

class _forma41State extends State<forma42> {

  bool is_first_time=false;


    first_time()async
  {

    SharedPreferences obj=await SharedPreferences.getInstance();
    bool check= obj.getBool('is_clicked')??true;

    setState(() {
      is_first_time=check;
      is_first_time=true;
    });

    
  }


int curr_index=0;

PageController contr=PageController();


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    first_time();
    print(is_first_time);
    Timer.periodic(Duration(seconds:2), (timer) {

      //dont need for set state because its periodic and the fun inside it
        
      setState(() {
        
      
      if(curr_index<3)
      {
        curr_index++;
          contr.animateToPage(curr_index, duration: Duration(seconds: 1), curve: Curves.easeIn);
      }

      else
      {
      curr_index=0;
       contr.animateToPage(curr_index, duration: Duration(seconds: 1), curve: Curves.easeIn);
      }

      });

     }

     );
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      routes: {
       '/y':(context) =>forma3(),
      },

      home: Scaffold(

          

          body: Stack(
            children: [
              if((is_first_time))
              Text('pppp'),
              PageView(
                controller: contr,//that control pageview widget it cann be called at anywhere
                onPageChanged: (value) {
      
                  /*if(value==3)
                  {
                    //Navigator.of(context).pushNamed('/y');
                    Future.delayed(Duration(seconds:2 ),(){return Navigator.of(context).pushNamed('/y');});
                  }*/
                  
                },
      
                children:[ ...elements.map((val) => 
                
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(  //you can set backgroundimage for countainer
                      image: ExactAssetImage(val.imagepath),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(val.icon,size: 70,),
                      SizedBox(height: 20,),
                      Text(val.title,style: TextStyle(fontSize: 40,color: Colors.white),),
                      SizedBox(height: 10,),
                      Text(val.subtitle,style: TextStyle(fontSize: 10,color: Colors.white),),
                    ],
                  ),
                )
                
                ).toList()]
                
      
              ),
      
             Builder(
               builder: (context) { //use it when an element cant reach context of a page
                 return Align(
                  alignment: Alignment(0,0.98),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    child: ElevatedButton(onPressed: ()async{
                      SharedPreferences obj=await SharedPreferences.getInstance();
                      obj.setBool('is_clicked', false);
                      //Future.delayed(Duration(seconds:3 ),(){return Navigator.of(context).pushNamed('/y');});
      
                    },
                     child: Text('click here')
                     
                     
                     ),
                  )
                   
                   );
               }
             ),
      
             Align(
              alignment: Alignment(0,0.85),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    small_circul(curr_index==0?Colors.red:Colors.white),
                    small_circul(curr_index==1?Colors.red:Colors.white),
                    small_circul(curr_index==2?Colors.red:Colors.white),
                    small_circul(curr_index==3?Colors.red:Colors.white),
                    
                    ],
                ),
              )
            ],
          ),
        ),
    );
    
    
  }

  Container small_circul(Color col) {
    
    
     return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 2),

      decoration: BoxDecoration(
        color: col,
        shape: BoxShape.circle
      ),

     );
  
  
  
  }


 
}