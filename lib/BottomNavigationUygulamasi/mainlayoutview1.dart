import 'package:flutter/material.dart';
import "package:myapp/BottomNavigationUygulamasi/categories.dart";
import "productsview.dart";
import "settingsview.dart";

class MainLayoutView extends StatefulWidget {
  @override
  const MainLayoutView({super.key});
  //_MyHomeScreenState createState() => _MyHomeScreenState();
  State<MainLayoutView> createState() => _MainLayoutViewState();
}

class _MainLayoutViewState extends State<MainLayoutView> {
  int _selectedIndex = 0; // Seçili sekmeyi tutar
  final List _dynamicAppBar = ["Ürünler", "Kategoriler", "Ayarlar"];

  // Sekmelere tıklandığında gösterilecek sayfalar
  final List<Widget> _pages = [
    const ProductsView(),
    const CategoriesView(),
    const SettingsView(),

    /*
    Center(child: Text('Ürünler')),
    Center(child: Text('Kategoriler')),
    Center(child: Text('Ayarlar')),
    */
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Seçili sayfayı ekrana basar
      appBar: AppBar(title: Text(_dynamicAppBar[_selectedIndex])),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index; // Durumu günceller
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'Ürünler',
          ),
          NavigationDestination(
            icon: Icon(Icons.category),
            label: 'Kategoriler',
          ),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Ayarlar'),
        ],
      ),
    );
  }
}
