





import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  final String images;
  final String text;
  final String subtext;
  const Contact({Key? key, required this.text, required this.subtext, required this.images}) : super(key: key);

  @override
  State<Contact> createState() => _ContactsState();
}

class _ContactsState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.images),
      title: Text(widget.text),
      subtitle: Text(widget.subtext,style: TextStyle(color: Colors.white60),),
      titleTextStyle: TextStyle(color: Colors.white),
    );
  }
}
