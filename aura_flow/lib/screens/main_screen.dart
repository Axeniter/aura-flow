import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  
  final List<Widget> _screens = [
    Center(child: Text('1', style: TextStyle(fontSize: 40, color: Colors.white))),
    Center(child: Text('2', style: TextStyle(fontSize: 40, color: Colors.white))),
    Center(child: Text('3', style: TextStyle(fontSize: 40, color: Colors.white))),
    Center(child: Text('4', style: TextStyle(fontSize: 40, color: Colors.white))),
    Center(child: Text('5', style: TextStyle(fontSize: 40, color: Colors.white))),
  ];

  final items = <Widget>[
    const Icon(Icons.home, size: 30),
    const Icon(Icons.favorite, size: 30),
    const Icon(Icons.broadcast_on_home, size: 30),
    const Icon(Icons.person, size: 30),
    const Icon(Icons.menu, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        items: items,
        height: 55.0,
        animationDuration: Duration(milliseconds: 250),
        animationCurve: Curves.easeOutCubic,
        backgroundColor: Colors.transparent,
        color: Theme.of(context).colorScheme.surface,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        onTap: (index) => setState(() {_currentIndex = index;}),
      ),
    );
  }
}