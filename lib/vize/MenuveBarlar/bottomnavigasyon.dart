import 'package:flutter/material.dart';

class BottomNavigasyon extends StatefulWidget {
  final List<Widget> pages;
  final List<BottomNavigationBarItem> items;
  final String appBarTitle;

  const BottomNavigasyon({
    super.key,
    required this.pages,
    required this.items,
    required this.appBarTitle,
  });

  @override
  _BottomNavigasyonState createState() => _BottomNavigasyonState();
}

class _BottomNavigasyonState extends State<BottomNavigasyon> {
  int _selectedIndex = 0;

  void _Onitemtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.appBarTitle)),
      body: IndexedStack(index: _selectedIndex, children: widget.pages),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: widget.items,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _Onitemtapped,
      ),
    );
  }
}
