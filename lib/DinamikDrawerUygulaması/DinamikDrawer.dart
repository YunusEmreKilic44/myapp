import 'package:flutter/material.dart';

class RouteItem {
  final String name;
  final String route;

  RouteItem({required this.name, required this.route});
}

class Dinamikdrawer extends StatelessWidget {
  final List<RouteItem> routes;

  const Dinamikdrawer({super.key, required this.routes});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text(
              "Dinamik Drawer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                backgroundColor: Colors.blueGrey,
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          for (var route in routes)
            ListTile(
              leading: Icon(Icons.route),
              title: Text(route.name),
              style: ListTileStyle.drawer,
              onTap: () {
                // Navigator.pushNamed(context, route.route);
                print("Navigating to ${route.route}");
              },
            ),
        ],
      ),
    );
  }
}
