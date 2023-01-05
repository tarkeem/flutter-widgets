import 'package:flutter/material.dart';


//listwheel scroll,color.primaries

class forma38 extends StatefulWidget {
  const forma38({Key? key}) : super(key: key);

  @override
  State<forma38> createState() => _forma38();
}

class _forma38 extends State<forma38> {
  List<Color> col=List.generate(10, (index) => Colors.primaries[index]);
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListWheelScrollView(
        controller: ScrollController(), 
        itemExtent: 100,
        children: col.map((e) => Container(
          color: col[i++],
        )).toList(),
      ),
    );
    
  }
}