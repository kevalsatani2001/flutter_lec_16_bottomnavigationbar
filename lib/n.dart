import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lec_16_bottomnavigationbar/prac1_bottomnavigation.dart';

class tab_bar extends StatefulWidget {
  const tab_bar({Key? key}) : super(key: key);

  @override
  State<tab_bar> createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          bottom: const TabBar(tabs: [
            Tab(
              //icon: Icon(Icons.chat),
              text: "chat",
            ),
            Tab(
              icon: Icon(Icons.chat),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          MyBottomNavigation(title: 'sds'),
          Text("second"),
        ]),
      ),
    );
  }
}
