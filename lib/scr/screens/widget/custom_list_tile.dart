




import 'package:flutter/material.dart';


class CustomBottons extends StatelessWidget {
  final String text;
  final String natificationtext;
  final Color color;
  const CustomBottons({Key? key, required this.text, required this.natificationtext, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      title: Text(text),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white,
      ),
      trailing: Badge(
        backgroundColor: Colors.blue,
        label: Text(natificationtext),
      ),
      leading: CircleAvatar(
        radius: 23,
        backgroundColor: color,
      ),
    );
  }
}
