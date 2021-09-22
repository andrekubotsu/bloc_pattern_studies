import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
            ),
            accountEmail: Text("contato201@gmail.com"),
            accountName: Text("Andre Kubotsu"),
          ),
          ListTile(
            title: Text("Item 1"),
          ),
          ListTile(
            title: Text("Item 2"),
          ),
          ListTile(
            title: Text("Item 3"),
          ),
          ListTile(
            title: Text("Item 4"),
          ),
          ListTile(
            title: Text("Item 5"),
          ),
        ],
      ),
    );
  }
}
