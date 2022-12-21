import 'package:flutter/material.dart';


class forma20 extends StatelessWidget {
  const forma20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /*return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future:Future.delayed(Duration(seconds: 3),()=>10) ,
        builder:(cxt,snapshot)=>
        Column(
          children: [
            snapshot.connectionState==ConnectionState.waiting?CircularProgressIndicator():Text('good'),
            Text('future has data:${snapshot.hasData?snapshot.data:'no'}'),
          ],
        )
         ,
      ),
    );*/




    return StreamBuilder(
    stream:Stream.periodic(Duration(seconds: 2),(e)=>e) ,
    builder: (cxt,snapshot)=>
    Center(
      child: Text('${snapshot.data}'),
    )
    );
    


    
  }
}




























//CircularProgressIndicator, future,stream

/*class forma20 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 5),()=>10),
      builder:((context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text(snapshot.hasData?'loading':"${snapshot.data}"),
          ),
          body: Center(
            child: snapshot.connectionState==ConnectionState.waiting?CircularProgressIndicator():Text('done'),
          ),
        );
      } ));
  }

}*/





/*class forma20 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds:100 ),(val)=>val),
      builder:((context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text(snapshot.hasData?'loading':"${snapshot.data}"),
          ),
          body: Center(
            child: snapshot.connectionState==ConnectionState.waiting?CircularProgressIndicator():Text("${(snapshot.hasData && snapshot.data ==10)?10:snapshot.data}"),
          ),
        );
      } ));
  }

}*/

/*fun()
{
  var obj =Stream.periodic(Duration(seconds: 2),(val)=>val);
  return obj;
}

class forma20 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _forma20();
  }

}*/

/*class _forma20 extends State<forma20>
{
  int i=0;
  @override
  Widget build(BuildContext context) {
  
return Scaffold(
  appBar: AppBar(
    title: Text('counter=$i'),
  ),
  body: Center(
    child: ElevatedButton(
      child: Text('click here'),
      onPressed: ()async {

       await for(var c in fun())
        { 
          setState(() {
            i=c;
          });
        }
        
      },
    ),
  ),
);

  }

}*/

//two way to deal with future,stream  1-async ,await    2-stream builder,await builder

/*class forma20 extends StatelessWidget
{
  var obj=Future.delayed(Duration(seconds: 5),()=>10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ,

      ),
    );
  }

}*/