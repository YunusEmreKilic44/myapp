import 'package:flutter/material.dart';
import 'package:myapp/vize/Ekranlar/Profil/profil.dart';
import 'package:myapp/vize/Ekranlar/Takvim/takvim.dart';
import 'package:myapp/vize/KartlarveModeller/kurssayfasi.dart';
import 'package:myapp/vize/MenuveBarlar/menu.dart';

class AnaDuzen extends StatefulWidget {
  const AnaDuzen({super.key});

  @override
  _AnaDuzenState createState() => _AnaDuzenState();
}

class _AnaDuzenState extends State<AnaDuzen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [KursSayfasi(), const Takvim(), const Profil()];

  final List<String> _pageTitles = ['Kurslar', 'Takvim', 'Profil'];

  void _Onitemtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pageTitles[_selectedIndex])),
      drawer: const Menu(),
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Kurslar'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Takvim',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _Onitemtapped,
      ),
    );
  }
}
