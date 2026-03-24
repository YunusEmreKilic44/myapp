import "package:flutter/material.dart";
//import "../Menuler/appdrawer.dart";

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Ürünler")),
      //drawer: AppDrawer(),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Ürün 1"),
            onTap: () {
              //Navigator.pushReplacementNamed(context, "/");
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Ürün 2"),
            onTap: () {
              //Navigator.pushReplacementNamed(context, "/");
            },
          ),
        ],

        
        /*children: [
          Text("Ayar Sayfası"),
          ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, "/")},
            child: const Text("Ana sayfaya git"),
          ),
        ],*/
      ), //Column
    );

    //
    // Notice that the counter didn't reset back to zero; the application
    // state is not lost during the reload. To reset the state, use hot
    // restart instead.
    //
    // This works for code too, not just values: Most code changes can be
    // tested with just a hot reload.
  }
}
