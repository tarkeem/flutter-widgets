import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/form1.dart';
import 'package:flutter_application/form17.dart';
import 'package:flutter_application/form2.dart';



//pass info throw the pages,drawer,listtile,inkwell

class forma14 extends StatelessWidget
{

  void go_to_another(BuildContext cxt,int n)
  {
    //buildcontext argument refer to the current page like this tha is in class or give information about thr current position
    Navigator.of(cxt).pushReplacement(MaterialPageRoute(builder: (__){//push keeps previous page in the background but this no
      if(n==1){
      return forma1('screen1'); //first method to pass value to another screen
      }
      
        return forma2();
    }
    )
    );
  }



  void go_to_another_2(BuildContext cxt)//second method to pass
  {
     Navigator.of(cxt).pushNamed(
      "/x",//"/x" is defined in main but all files can see it because will be written in home
    
      arguments: <Object?,Object?>{ //x is related to forma12
        "val1":2,
        'val2':"it id val 2 from another screen",
      },
    );
  }




   void go_to_another3(BuildContext cxt)
  {
   
    Navigator.of(cxt).push(MaterialPageRoute(builder: (__){
      return forma17();

    })).then((value) => print(value));//value refers to the val that return from the next page when you close it
      
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawerScrimColor: Color.fromARGB(255, 158, 3, 3),
      drawer: Drawer(               //text('as')

        child: ListView(
          children: [ListTile(

            title: Text('hi',style: TextStyle(fontSize: 20,color: Colors.deepOrange),),
            subtitle: Text('ds'),
            trailing: Icon(Icons.access_alarm_rounded),
            onTap:() => go_to_another_2(context),
          )
          
          ],
        ),

      ),

      body: Center(

        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,

        children: [InkWell(
          child: Text("go to another page1",style: TextStyle(color: Colors.blue
          ,fontSize: 30
          ),),
          onTap: () => go_to_another(context,1),
        ),
        InkWell(
          child: Text("go to another page2",style: TextStyle(color: Colors.blue
          ,fontSize: 30
          ),),
          onTap: () => go_to_another3(context),
        )
        ],
        ),
      ),

    );
  }



}