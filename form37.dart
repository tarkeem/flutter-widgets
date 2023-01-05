import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

//linear and circular indicatro

class forma37 extends StatefulWidget {
  const forma37({Key? key}) : super(key: key);

  @override
  State<forma37> createState() => _forma37State();
}

class _forma37State extends State<forma37> {

  double load_val=0;
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration:4000,
              radius: 50,
              lineWidth: 20,
              percent: load_val,
              progressColor: Colors.green,
              backgroundColor: Colors.black,
              header: Text('loading'),
              center:Icon( Icons.warning_outlined),

              ),

              Slider(
                min: 0.0,
                max: 1.0,
                divisions: 100,
                value: load_val,
               onChanged:(val){
                setState(() {
                  load_val=val;
                });
               }
               ),
            SizedBox(height: 10,),

            LinearPercentIndicator(

              animation: true,
              animationDuration:4000,
              lineHeight: 30, //notice the difference between height ,width
              width: 400,
              percent: 0.5,
              progressColor: Color.fromARGB(255, 68, 0, 255),
              backgroundColor: Color.fromARGB(255, 56, 0, 0),
              leading: Text('hi'),
              trailing: Text('hello'),
              center:Icon( Icons.warning_outlined),


            ),

          ],
        ),
      ),

    );
    
  }
}