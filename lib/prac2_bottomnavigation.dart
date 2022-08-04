import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pra2_bottom extends StatefulWidget {
  const Pra2_bottom({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  State<Pra2_bottom> createState() => _Pra2_bottomState();
}

class _Pra2_bottomState extends State<Pra2_bottom> {
  //static const String _title='Flutter code sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home: Scaffold(
        appBar: AppBar(
         title: Text(widget.title),
        ),
      
      ),
    );
  }
}