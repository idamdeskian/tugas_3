import 'package:flutter/material.dart';
import 'login_page.dart';

class NewsPage extends StatelessWidget {
  final String username;

  const NewsPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Apple Sedang Cari Karyawan untuk Urus Syarat Jualan iPhone di Indonesia',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Image.network(
                    'https://asset.kompas.com/crops/bXtYPkF3MjAcs5fxBWYOS7PmAOI=/77x0:1843x1178/226x150/data/photo/2023/11/03/6544c644bbc3b.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Posisi ini memiliki tugas mengurus seluruh dokumen yang berkaitan dengan regulasi dan perizinan yang dibutuhkan suatu perangkat atau layanan Apple.',
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Sumber: https://tekno.kompas.com/read/2024/12/24/09030097/apple-sedang-cari-karyawan-untuk-urus-syarat-jualan-iphone-di-indonesia',
                    style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
