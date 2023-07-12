import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/scr/screens/widget/contacts.dart';

import 'widget/chat.dart';
import 'widget/custom_drower.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        backgroundColor: const Color(0xFF2F2A2A),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Contacts(),));
          },
          child: const Icon(Icons.edit),
        ),
        appBar: AppBar(
          bottom: TabBar(
            controller: _controller,
            labelPadding: const EdgeInsets.all(10),
            isScrollable: false,
            tabs: [
              Badge(
                label: const Text("27"),
                backgroundColor: Colors.purple,
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 25,
                  height: 25,
                ),
              ),
              const Icon(CupertinoIcons.person),
              const Icon(CupertinoIcons.person_2),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                icon:  Icon( isChecked ? CupertinoIcons.lock_fill : CupertinoIcons.lock_open_fill)),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
          ],
          centerTitle: false,
          title: const Text("aka"),
          backgroundColor: const Color(0xFF1B1212),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            const OneScree(),
            ListView(
              children: [
                Chat(
                    paht: "assets/images/image_1.png",
                    titletext: "Martin Randolph",
                    subtext: "tun",
                    icon: Icons.done,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (11).png",
                    titletext: "Andrew Parker",
                    subtext: "mon",
                    icon: Icons.done_all,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (12).png",
                    titletext: "Andrew Parker",
                    subtext: "tun",
                    icon: Icons.done,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (13).png",
                    titletext: "Kieron Dotson",
                    subtext: "mon",
                    icon: Icons.done_all,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (14).png",
                    titletext: "Kieron Dotson",
                    subtext: "tun",
                    icon: Icons.done,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (15).png",
                    titletext: "Zack John",
                    subtext: "tun",
                    icon: Icons.done_all,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (18).png",
                    titletext: "Karen Castillo",
                    subtext: "mon",
                    icon: Icons.done,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (19).png",
                    titletext: "Jamie Franco",
                    subtext: "tun",
                    icon: Icons.done,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (13).png",
                    titletext: "Jamie Franco",
                    subtext: "mon",
                    icon: Icons.done_all,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (11).png",
                    titletext: "Jamie Franco",
                    subtext: "tun",
                    icon: Icons.done,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (18).png",
                    titletext: "Maximillian Jacobson",
                    subtext: "tun",
                    icon: Icons.done_all,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (11).png",
                    titletext: "Martha Craig",
                    subtext: "mon",
                    icon: Icons.done,
                    res: true),
                Chat(
                    paht: "assets/images/Oval (11).png",
                    titletext: "Tabitha Potter",
                    subtext: "tun",
                    icon: Icons.done_all,
                    res: true),
                Chat(
                    paht: "assets/images/image_1.png",
                    titletext: "Maisy Humphrey",
                    subtext: "mon",
                    icon: Icons.done_all,
                    res: true),
              ],
            ),
            const TwoScreen(),
          ],
        ),
        drawer: const Custom_Drawer(),
      ),
    );
  }
}


class TwoScreen extends StatefulWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color(0xFF2F2A2A),
      body: Center(
        child: Text("Two Screen"),
      ),
    );
  }
}



class OneScree extends StatefulWidget {
  const OneScree({Key? key}) : super(key: key);

  @override
  State<OneScree> createState() => _OneScreeState();
}

class _OneScreeState extends State<OneScree> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color(0xFF2F2A2A),
      body: Center(
        child: Text("One Screen"),
      ),
    );
  }
}