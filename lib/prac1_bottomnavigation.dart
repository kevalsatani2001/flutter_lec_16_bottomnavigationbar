import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lec_16_bottomnavigationbar/Chat_screen.dart';
import 'package:flutter_lec_16_bottomnavigationbar/Home_Screen.dart';
import 'package:flutter_lec_16_bottomnavigationbar/Profile_screen.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentvalue,
          onTap: (index) {
            setState(() {
              currentvalue = index;
            });
            print(currentvalue);
          },
          backgroundColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'school'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Book'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setting'),
          ]),
    );
  }

  _body() {
    switch (currentvalue) {
      case 0:
        return Center(child: Container(child: Text("0")));

      case 1:
        //return Center(child: Container(child: Text("1")));
        return const HomeScreen();
      case 2:
        //return Center(child: Container(child: Text("2")));
        return const ChatScreen();
      case 3:
        //return Center(child: Container(child: Text("3")));
        return const Profile();
      default:
        return Center(
          child: Container(
            child: Text("inavalid"),
          ),
        );
    }
  }
}
