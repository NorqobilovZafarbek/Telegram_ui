import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabController,
          tabs: [
            const Text("Page 1"),
            const Text("Page 2"),
            const Text("Page 3"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          const OneScree(),
          const TwoScreen(),
          const ThreeScreen(),
        ],
      ),
    );
  }


  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
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
      body: Center(
        child: Text("One Screen"),
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
      body: Center(
        child: Text("Two Screen"),
      ),
    );
  }
}


class ThreeScreen extends StatefulWidget {
  const ThreeScreen({Key? key}) : super(key: key);

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Three Screen"),
      ),
    );
  }
}
