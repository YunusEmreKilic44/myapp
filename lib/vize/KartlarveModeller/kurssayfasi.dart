import 'package:flutter/material.dart';
import 'package:myapp/vize/KartlarveModeller/kurskarti.dart';
import 'package:myapp/vize/KartlarveModeller/kursmodeli.dart';

class KursSayfasi extends StatelessWidget {
  final List<KursModeli> kursListesi = [
    KursModeli(
      KursAdi: "Flutter ile Mobil Uygulama Geliştirme",
      EgitmenAdi: "Dr. Ahmet YILMAZ",
      IlerlemeOrani: 0.8,
      KursIkonu: Icons.phone_android,
    ),
    KursModeli(
      KursAdi: "Web Geliştirme ve Tasarım",
      EgitmenAdi: "Prof. Dr. Ayşe KAYA",
      IlerlemeOrani: 0.6,
      KursIkonu: Icons.web,
    ),
    KursModeli(
      KursAdi: "Veritabanı Yönetim Sistemleri",
      EgitmenAdi: "Dr. Hakan GENÇOĞLU",
      IlerlemeOrani: 0.2,
      KursIkonu: Icons.storage,
    ),
    KursModeli(
      KursAdi: "İşletim Sistemleri",
      EgitmenAdi: "Dr. Cevat RESİT",
      IlerlemeOrani: 0.75,
      KursIkonu: Icons.computer,
    ),
  ];

  KursSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Determine aspect ratio based on screen width
          final double screenWidth = constraints.maxWidth;
          double aspectRatio;

          if (screenWidth < 450) {
            // Mobile devices: Taller cards to prevent overflow
            aspectRatio = 1.1;
          } else if (screenWidth < 800) {
            // Tablets or small web windows: A balanced aspect ratio
            aspectRatio = 1.4;
          } else {
            // Wide web/desktop: Shorter cards to avoid large gaps
            aspectRatio = 3;
          }

          return GridView.builder(
            itemCount: kursListesi.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: aspectRatio, // Use the responsive aspect ratio
            ),
            itemBuilder: (context, index) {
              return KursKarti(kursVerisi: kursListesi[index]);
            },
          );
        },
      ),
    );
  }
}
