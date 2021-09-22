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
            accountEmail: Text("jacobaraujo7@gmail.com"),
            accountName: Text("Jacob Moura"),
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
