


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottons extends StatefulWidget {
  final String text;
  final IconData icon;
  const Bottons({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  State<Bottons> createState() => _BottonsState();
}

class _BottonsState extends State<Bottons> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icon,color: Colors.white54,),
      title: Text(widget.text,style: TextStyle(color: Colors.white,fontSize: 17),),
    );
  }
}
