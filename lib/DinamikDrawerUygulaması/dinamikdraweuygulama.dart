import 'package:flutter/material.dart';
import 'package:myapp/DinamikDrawerUygulamas%C4%B1/DinamikDrawer.dart';

class DinamikDrawerUygulama extends StatefulWidget {
  @override
  State<DinamikDrawerUygulama> createState() => _DinamikDrawerUygulamaState();
}

class _DinamikDrawerUygulamaState extends State<DinamikDrawerUygulama> {
  TextEditingController routeNameController = TextEditingController();
  TextEditingController routeURLController = TextEditingController();
  List<RouteItem> routes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dinamik Drawer")),
      drawer: Dinamikdrawer(routes: routes),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: routeNameController,
              decoration: InputDecoration(
                labelText: "Bağlantı Görünen Adı",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.route),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: routeURLController,
              decoration: InputDecoration(
                labelText: "Bağlantı Adresi",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.link),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: addDrawer,
              child: Text("Listeye ve Drawer'a Ekle"),
            ),
          ],
        ),
      ),
    );
  }

  void addDrawer() {
    if (routeNameController.text.isNotEmpty &&
        routeURLController.text.isNotEmpty) {
      setState(() {
        routes.add(
          RouteItem(
            name: routeNameController.text,
            route: routeURLController.text,
          ),
        );
        routeNameController.text = "";
        routeURLController.text = "";
      });
    }
  }
}
