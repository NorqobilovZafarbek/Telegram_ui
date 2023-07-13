

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
                  child: Image.asset("assets/images/Oval (18).png"),
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
