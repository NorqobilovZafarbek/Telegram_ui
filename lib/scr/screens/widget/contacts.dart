

import 'package:telegram_ui/scr/screens/widget/bottons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/scr/screens/widget/contact.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F2A2A),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.person_add_alt_sharp),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1212),
        leading: const BackButton(),
        title: const Text("New Message"),
        titleTextStyle: const TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.search)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.menu_open_sharp)),
        ],
      ),
      body: ListView(
        children: [
          Bottons(icon: CupertinoIcons.person_2,text: "New Group"),
          Bottons(icon: CupertinoIcons.lock_fill,text: "New Secreat Chat"),
          Bottons(icon: CupertinoIcons.volume_down,text: "New Channel"),
          Container(
            height: 25,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 10),
              child: Text("Sorted by last seen time",style: TextStyle(color: Colors.white60),),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF1B1212),
            ),
          ),
          Contact(images: "assets/images/Oval (18).png",text: "Karen Castillo",subtext: "last seen at 18:36"),
          Contact(images: "assets/images/Oval (15).png",text: "Zack John",subtext: "last seen at 18:36"),
          Contact(images: "assets/images/Oval (18).png",text: "Karen Castillo",subtext: "last seen at 18:36"),
          Contact(images: "assets/images/Oval (18).png",text: "Karen Castillo",subtext: "last seen at 18:36"),
          Contact(images: "assets/images/Oval (18).png",text: "Karen Castillo",subtext: "last seen at 18:36"),
        ],
      ),
    );
  }
}
