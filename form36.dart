import 'package:flutter/material.dart';



//need more work
//dismissable,generated list

class forma36 extends StatefulWidget {
  const forma36({Key? key}) : super(key: key);

  @override
  State<forma36> createState() => _forma36State();
}

class _forma36State extends State<forma36> {
  int i=0;
  List <Widget> liked_list=[];
  final li=List<String>.generate(10, (index) => 'item:$index');
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body:dismissable_m1(),        //center widget or container with align.center will cont work,we can consider child of listview not in closed widget
    
         
      
    );
    
  }

  ListView dismissable_m1() {
    return ListView(
      
          children:[
           ...li.map((e) => Center(
            child:Dismissible(
              
              background: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 21, 255, 0),
              ),
              secondaryBackground:Container(
                color: Color.fromARGB(255, 250, 9, 0),
              ) ,
              confirmDismiss: (dir)async{ //like ondissable but this is suitable for confirmation, compare with ondissable
 
                if(dir==DismissDirection.endToStart)
                {

                bool res=await showDialog(
                barrierDismissible: false,
                context: context, builder:(_){
                  return AlertDialog(
                    title: Text('are you sure?'),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(_).pop();
                      },
                       child: Text('cancel')),
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                        
                      }, child: Text('ok'))
                      ],
                  );
                }
                
                );
                return res;
                }

                else
                {
                  return true;
                }
              },
              /*onDismissed: (dirction){
                if(dirction==DismissDirection.endToStart)
                {
              setState(() {
                li.removeAt(li.indexOf(e));
              } 
              );
               ScaffoldMessenger.of(context).showSnackBar(

                SnackBar(content:Text(''),
                action:SnackBarAction(
                  label: 'undo',
                  onPressed: (){
                    
                      
                    
                    li.insert(li.indexOf(e)+1, e);
                   
                  },
                ), 
                )
                
                );
                }
                else
                {
                  liked_list.insert(i++, Text('$e'));
                }

             


              },*/

              key: Key(e),//identify every element
              child: Text(e,
              style: TextStyle(color: Colors.black,fontSize: 30),),
            ))).toList(),
            Text(li[0])
            ]
         );
  }
}

//back to lecture to continue