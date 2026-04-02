import 'package:flutter/material.dart';
import 'package:myapp/vize/AnaDuzen/anaduzen.dart';
import 'package:myapp/vize/Ekranlar/Ayarlar/ayarlarsayfasi.dart';
import 'package:myapp/vize/Ekranlar/Profil/profil.dart';
import 'package:myapp/vize/Ekranlar/Takvim/takvim.dart';
import 'package:myapp/vize/KartlarveModeller/kurssayfasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const AnaDuzen(),
        '/kurslar': (context) => KursSayfasi(),
        '/takvim': (context) => const Takvim(),
        '/profil': (context) => const Profil(),

        '/ayarlar': (context) => AyarlarSayfasi(),
      },
    );
  }
}
