import 'package:flutter/material.dart';
import 'package:myapp/BottomNavigationUygulamasi/categories.dart';
import 'package:myapp/BottomNavigationUygulamasi/customBottomnav.dart';
import 'package:myapp/BottomNavigationUygulamasi/productsview.dart';
import 'package:myapp/BottomNavigationUygulamasi/settingsview.dart';


class MainLayoutView extends StatefulWidget {
  const MainLayoutView({super.key});

  @override
  State<MainLayoutView> createState() => _MainLayoutViewState();
}

class _MainLayoutViewState extends State<MainLayoutView> {
  int _index = 0;

  final List<String> _titles = ["Ürünler", "Kategoriler", "Ayarlar"];

  final List<Widget> _pages = const [
    ProductsView(),
    CategoriesView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_index]),
      ),
      body: IndexedStack(
        index: _index,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}