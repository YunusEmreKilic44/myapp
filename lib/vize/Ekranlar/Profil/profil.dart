import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),

            SizedBox(height: 20),
            Text('Ad: Yunus Emre Kılıç'),
            SizedBox(height: 10),
            Text('Bölüm: Yazılım Mühendisligi'),
          ],
        ),
      ),
    );
  }
}
