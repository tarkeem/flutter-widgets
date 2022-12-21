  //start of section 2



/*
sync:excute other functions in the same time when a fuction is excuting
async:dont excute any function before finishing the previous one
await:stop the program until the duration pass then future function become no longer future type
*/
  
  /*var obj=Future(fun);
  print('aa');
  var obj2=Future.delayed(Duration(seconds: 5),(){print('ttt');});
  print('oo');
  var obj3=Future(() => fun2('ui')).
  then((value) => print(value))
  .catchError((a)=>print('this error for:$a'));*/

  /*var obj=Stream.periodic(Duration(seconds: 2),(int val) =>val );//returned val== event
  var cather=obj.listen((event) {print(event); 
  },
  onError: (err){print(err);});//chatcher now controls the properties
  cather.onData((data) {print(data+10);});*/


  //var obj=Stream.periodic(Duration(milliseconds: 1000),(val) => val );
  /*var sup=obj.listen((_)=>_); //to use another featuers like pause,not possible to be two listen in sametime
  sup.onData((data) {
    data<10?print(data):sup.cancel();
  });*/

  /*var obj2=obj.where((val) =>val%2==0 );
  //obj.listen((event) {print(event);});
  obj2.listen((event) {print(event);});*/

//...........................
/*
void fun()
  {
    print('bb');
  }
  int fun2( n)
  {
    return n;
  }

    fun3()sync*{
    var obj1= Stream.periodic(Duration(milliseconds: 1000),(val) => val );//type=future int
var obj2=await Future.delayed(Duration(seconds: 5),(){print('ttt');});//type=future int


await for(var val in obj1)
{
print(val);
}

  }
 */