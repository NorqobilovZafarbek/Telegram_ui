

import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
   IconData? icon;
   String paht;
   String titletext;
   String subtext;
   bool res ;
   Chat({Key? key,this.icon,required this.paht,required this.titletext, required this.subtext, this.res = false}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){},
          leading: Image.asset(widget.paht),
          title: Text(widget.titletext),
          titleTextStyle: TextStyle(color: Colors.white),
          subtitle: Text("As a thank you for signing up for emails, take 25% off reg. price styles online. Plus, we're giving you access to exclusive offers, new arrivals, and more.",overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.subtext,style: TextStyle(color: Colors.white),),
              Icon(widget.icon,color: Colors.white,),
            ],
          ),
        ),
        Divider(
          color: widget.res ? Colors.white38 : Colors.transparent,
          indent: 85,
        ),
      ],
    );
  }
}
