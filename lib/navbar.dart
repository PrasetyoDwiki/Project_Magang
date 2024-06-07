import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Dinas/Dinas.dart';
import 'package:flutter_application_1/pages/Cuti/cuti.dart';
import 'package:flutter_application_1/pages/Home/home.dart';
import 'package:flutter_application_1/pages/Profile/profil.dart';

class navbar extends StatefulWidget {
  final int? index;
  const navbar({required this.index});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int currentIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    home(),
    Cuti(),
    Bisnis(),
    profil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    currentIndex = widget.index as int;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff1d77ca),
          unselectedItemColor: Colors.black,
          elevation: 50,
          iconSize: 30,
          backgroundColor: Color(0xffE0E1F4),
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.padding),
              label: 'Cuti',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.time_to_leave),
              label: 'Dinas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
        ));
  }
}
