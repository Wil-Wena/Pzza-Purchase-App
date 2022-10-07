import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pizza_purchase_app/Screens/homepage.dart';
import 'package:pizza_purchase_app/Screens/trial.dart';
import 'package:pizza_purchase_app/Screens/trial2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    GetTrial(),
    Container(color: Colors.yellow),
    Container(color: Colors.blue),
    Container(color: Colors.purple),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
        child: BottomNavigationBar(
          iconSize: 20,
          unselectedFontSize: 10,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.timelapse_outlined,
              ),
              label: 'Frequent',
            ),
          ],
        ),
      ),
    );
  }
}
