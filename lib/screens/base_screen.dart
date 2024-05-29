import 'package:flutter/material.dart';
import 'package:flutter_application/models/hero.dart';
import 'package:flutter_application/screens/person_list_screen.dart';
import 'package:flutter_application/screens/setting_screen.dart';

class BaseScreen extends StatefulWidget {
  final List<Person> heroes;

  BaseScreen({required this.heroes});

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          PersonListScreen(heroes: widget.heroes),
          Settings(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black, // Set the background color to black
        onTap: _onItemTapped,
      ),
    );
  }
}
