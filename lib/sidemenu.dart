import 'package:flutter/material.dart';
import 'home_page.dart';
import 'menu_page.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Drawer Header dengan background dan desain lebih menarik
          UserAccountsDrawerHeader(
            accountName:
                const Text('Menu Resto', style: TextStyle(fontSize: 24)),
            accountEmail: const Text('Selamat datang!'),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pinkAccent,
                  Colors.orangeAccent
                ], // Gradasi warna header
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.restaurant,
                  size: 50, color: Colors.pinkAccent), // Ikon lebih relevan
            ),
          ),

          // ListTile untuk Home
          ListTile(
            leading: const Icon(Icons.home, color: Colors.black),
            title: const Text('Home', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),

          // ListTile untuk Menu
          ListTile(
            leading: const Icon(Icons.menu_book, color: Colors.black),
            title: const Text('Menu', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MenuPage()));
            },
          ),
        ],
      ),
    );
  }
}
