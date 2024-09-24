import 'package:flutter/material.dart';
import 'sidemenu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Resto')),
      drawer: const Sidemenu(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink[100]!,
              Colors.white
            ], // Warna background diperbarui
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2, // Jumlah kolom dalam satu baris
          crossAxisSpacing: 10, // Jarak horizontal antar item
          mainAxisSpacing: 10, // Jarak vertikal antar item
          childAspectRatio: 3 / 2, // Mengatur ukuran kotak lebih kecil
          children: [
            _buildMenuItem('Nasi Goreng', 'Rp 20.000'),
            _buildMenuItem('Mie Ayam', 'Rp 25.000'),
            _buildMenuItem('Ayam Penyet', 'Rp 30.000'),
            _buildMenuItem('Soto Ayam', 'Rp 18.000'),
            _buildMenuItem('Bakso Sapi', 'Rp 22.000'),
            _buildMenuItem('Gado-Gado', 'Rp 15.000'),
            _buildMenuItem('Sate Ayam', 'Rp 28.000'),
            _buildMenuItem('Rendang', 'Rp 35.000'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, String price) {
    return Card(
      elevation: 3, // Menurunkan elevasi untuk tampilan yang lebih lembut
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8), // Membuat sudut yang lebih lembut
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            Text(
              price,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
