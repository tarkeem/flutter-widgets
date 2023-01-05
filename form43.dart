import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

//googlebar
class forma43 extends StatefulWidget {
  const forma43({Key? key}) : super(key: key);

  @override
  State<forma43> createState() => _forma43State();
}

List li=[  //every element can be in another class type of widget but without scafold
  Center(child: Text('add'),),
  Center(child: Text('home'),),
  Center(child: Text('clock'),),
  Center(child: Text('abc'),)


];

class _forma43State extends State<forma43> {

 int curr_index=0;
 


  @override
  Widget build(BuildContext context) {
    

    
    return Scaffold(
      body: li[curr_index],

      
      bottomNavigationBar:SafeArea(
        child: GNav(

            onTabChange: (val){
              setState(() {
                curr_index=val;
              });
            },
           padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5), //thera are difference between this  padding and padding widget
          duration: Duration(milliseconds:500 ),
          tabBorderRadius: 30,
          tabBorder: Border.all(color: Colors.green),
          tabActiveBorder: Border.all(color: Colors.white,width: 2),
          gap: 5,
          activeColor: Colors.yellow,
          backgroundColor: Color.fromARGB(255, 221, 11, 204),
          tabBackgroundColor: Color.fromARGB(255, 0, 4, 253),
          tabShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 122, 1, 7).withOpacity(0.9),
              
              
              )
            
            ],
        
        tabs: [
          
          GButton(icon: Icons.add,text: 'add',),
          
          GButton(icon: Icons.home,text: 'home',),
          
          GButton(icon: Icons.lock_clock,text: 'clock',),
          GButton(icon: Icons.abc,text:'abc',)
      
        ]
        ),
      ) ,
      
    );
    
  }
}