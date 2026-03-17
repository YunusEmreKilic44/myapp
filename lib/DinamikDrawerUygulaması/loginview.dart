import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController kullaniciAdiKontrolcusu = TextEditingController();

  TextEditingController parolaKontrolcusu = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Sayfas")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: kullaniciAdiKontrolcusu,
              decoration: const InputDecoration(
                labelText: "Kullanıcı Adı",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              controller: parolaKontrolcusu,
              decoration: const InputDecoration(
                labelText: "Şifre",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: loginCheck,
              child: const Text("Giriş yap"),
            ),
          ],
        ),
      ),
    );
  }

  void loginCheck() {
    String kullaniciAdi = kullaniciAdiKontrolcusu.text;
    String password = parolaKontrolcusu.text;

    if (kullaniciAdi == "admin" && password == "123") {
      Navigator.pushNamed(context, '/dinamikDrawer');
    }
  }
}
