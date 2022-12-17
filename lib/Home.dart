import 'package:assignment_7/screens/all.dart';
import 'package:assignment_7/screens/cafes.dart';
import 'package:assignment_7/screens/fastfood.dart';
import 'package:assignment_7/topBar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  State<StatefulWidget> createState() => _Home();
  
}

class _Home extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(180),
          child: TopBar()
        ),
        backgroundColor: Colors.grey.shade300,
        body: const TabBarView(
          children: [
            All(),
            FastFood(),
            Cafes(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blueGrey.shade900,
          unselectedItemColor: Colors.grey.shade300,
          selectedLabelStyle: TextStyle(color: Colors.blueGrey.shade900),
          unselectedLabelStyle: TextStyle(color: Colors.grey.shade300),
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: "Closest",
              icon: Icon(Icons.map_outlined)
            ),
            BottomNavigationBarItem(
              label: "Shop",
              icon: Icon(Icons.shopping_cart)
            ),
            BottomNavigationBarItem(
              label: "Bravo",
              icon: Icon(Icons.wallet_giftcard_rounded)
            ),
            BottomNavigationBarItem(
              label: "More",
              icon: Icon(Icons.more_horiz_rounded)
            )
          ]
        ),
      ),
    );
  }

}