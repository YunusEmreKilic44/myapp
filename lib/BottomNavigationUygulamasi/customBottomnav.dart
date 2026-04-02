import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Ürünler",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: "Kategoriler",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Ayarlar",
        ),
      ],
    );
  }
}