import 'package:flutter/material.dart';
import 'sidemenu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.pink[100], // Mengubah warna AppBar menjadi pink muda
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Home', style: TextStyle(color: Colors.black)),
      ),
      drawer: const Sidemenu(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF3F3), // Background dengan tone pink terang
              Color(0xFFF8BBD0), // Background pink yang lebih gelap
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20),

                // Kolom Teks Deskripsi
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Selamat Datang di Restoran Kami',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors
                              .deepOrange, // Warna teks oranye yang menarik
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Kami menyajikan berbagai hidangan lezat dengan suasana nyaman dan staf yang ramah. '
                        'Pengalaman bersantap yang tak terlupakan menanti Anda.',
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.5,
                          color: Colors.black87, // Warna teks hitam lembut
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Informasi Tambahan
            const Divider(thickness: 2), // Pemisah untuk memperjelas
            const SizedBox(height: 10),
            const Text(
              'Kami hanya menggunakan bahan-bahan segar dan berkualitas tinggi dalam setiap hidangan. '
              'Dari sarapan hingga makan malam, ada pilihan untuk semua orang.',
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Datang dan nikmati pengalaman bersantap terbaik bersama kami!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
