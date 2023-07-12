import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottons.dart';
import 'custom_list_tile.dart';

class Custom_Drawer extends StatefulWidget {
  const Custom_Drawer({Key? key}) : super(key: key);

  @override
  State<Custom_Drawer> createState() => _Custom_DrowerState();
}

class _Custom_DrowerState extends State<Custom_Drawer> {
  bool res = true;
  void onTap(){
    setState(() {
      res = !res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF2F2A2A),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xFF1E1B1B),
                ),
                arrowColor: Colors.white,
                accountName: Text("Zafarbek"),
                accountEmail: Text("+998 947064121"),
                onDetailsPressed: onTap,
                otherAccountsPictures: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.light_mode,size: 30,),color: Colors.white,),
                ],
                currentAccountPicture: CircleAvatar(
                  foregroundImage: NetworkImage("data:image/png;base64,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"),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: res ? 0 : 235,
                width: double.infinity,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    CustomBottons(color: Colors.green,text: "Zafarbek",natificationtext: "27"),
                    CustomBottons(color: Colors.cyanAccent,text: "Zafarbek Norqobilov",natificationtext: "7"),
                    CustomBottons(color: Colors.purple,text: "N_Z",natificationtext: "2"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Bottons(text: "Hisob qo'shish",icon: CupertinoIcons.add),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Bottons(text: "Yangi gruh", icon: CupertinoIcons.person_2),
              Bottons(text: "Kontaktlar", icon: CupertinoIcons.person),
              Bottons(text: "Chaqiruvlar", icon: CupertinoIcons.phone),
              Bottons(text: "Yaqin-atrofdagi odamlar", icon: CupertinoIcons.location_circle_fill),
              Bottons(text: "Saqlangan xabarlar", icon: CupertinoIcons.bookmark),
              Bottons(text: "Sozlamalar", icon: Icons.settings),
              Divider(color: Colors.black,),
              Bottons(text: "aka sozlanmalari", icon: Icons.settings),
              Bottons(text: "Online Contacts", icon: Icons.online_prediction),
              Bottons(text: "Mavzuni Sozlang", icon: CupertinoIcons.thermometer),
              Divider(color: Colors.black,),
              Bottons(text: "Keshni Tozalash Vositasi", icon: CupertinoIcons.clear_fill),
              Bottons(text: "Kontaktlarni o'zgartirish", icon: CupertinoIcons.person),
              Bottons(text: "aka Kanal", icon: CupertinoIcons.volume_down),
              Bottons(text: "Id Qidiruvchisi", icon: CupertinoIcons.person),
              SizedBox(height: 10,),
              Bottons(text: "Tanishlarni taklif qilish", icon: Icons.person_add_outlined),
              Bottons(text: "Telegram funksiyalari", icon: CupertinoIcons.question_circle),
            ],
          ),
        ],
      ),
    );
  }
}
