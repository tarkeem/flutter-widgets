import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



//carousel slider

class forma31 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    
    return _forma31();

  }

}

class _forma31 extends State<forma31> {
   
  int cur_index=0; 
  List img=[
  'assets/images/s1.jpg',
  'assets/images/s2.jpg',
  'assets/images/s3.jpg'
  ];


  @override
  Widget build(BuildContext context) {

      return Scaffold(

        appBar: AppBar(),
        body: Center(
          child: ListView(
            children: [
              SizedBox(height: 20,),
              CarouselSlider(

                items: [
                  ...img.map((e) {

                    return Container(

                      width: double.infinity,
                      //height: 10,
                      margin: EdgeInsets.symmetric(horizontal: 0),
                      
                      child: Image.asset(e,fit: BoxFit.cover,)
                    );
                  }
                  
                  
                  ).toList()
                  
                  ],
                options: CarouselOptions(
                  height: 200, //that wich controls height not container
                  autoPlay: true,
                  //autoPlayAnimationDuration: Duration(seconds: 10),
                  autoPlayInterval: Duration(seconds: 5),
                  //aspectRatio: 10/10,
                  //disableCenter: true,
                  enlargeCenterPage: true, //if it true it will not need to give margine

                  onPageChanged: (index, _) {

                    setState(() {
                      cur_index=index;
                    });

                    
                  },

                  pauseAutoPlayOnTouch: false,
                  
                ),
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  meth1(0),meth1(1),meth1(2)
                ],
              ),


              CarouselSlider.builder(
                itemCount: img.length, 
                itemBuilder: (cxt, index, realIndex) {



                  return Container(

                      width: double.infinity,
                      height: 100,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      
                      child: Image.asset(img[index],fit: BoxFit.fill,)
                    );


                  
                }, 
                options:CarouselOptions(height: 400,initialPage: 1)
                )
            ],
          ),
        ),

        
      );

  }

  Container meth1(int idx) {
    return Container(

             
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                 color: cur_index==idx?Colors.red:Color.fromARGB(255, 0, 0, 0),
                shape: BoxShape.circle
              ),

            );
  }
}