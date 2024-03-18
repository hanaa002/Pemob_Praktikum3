import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      theme: ThemeData(
        primaryColor:
            Colors.blueAccent, // Sesuaikan dengan branding Peduli Lindungi
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peduli Lindungi'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.blue, // Warna latar biru untuk header
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Entering a Public Space?',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // Warna teks putih
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Stay Alert to Stay Safe',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white, // Warna teks putih
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/tanganscan.png', // Ganti dengan asset foto scan aplikasi
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar putih untuk box
                        borderRadius: BorderRadius.only(
                          bottomLeft:
                              Radius.circular(10), // Sudut bulat di bottom left
                          bottomRight: Radius.circular(
                              10), // Sudut bulat di bottom right
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.5), // Warna bayangan
                            spreadRadius: 5, // Jarak penyebaran bayangan
                            blurRadius: 7, // Tingkat ketajaman bayangan
                            offset: Offset(0, 3), // Posisi bayangan
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: const [
                                Icon(Icons.keyboard_arrow_down),
                                Text(
                                  'Check-In Preference',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Tambahkan fungsi untuk menangani tombol check-in di sini
                            },
                            icon: Icon(
                              Icons.qr_code_scanner,
                              color:
                                  Colors.blue, // Ubah warna ikon menjadi biru
                            ),
                            label: Text(
                              'Check-In',
                              style: TextStyle(
                                color: Colors.blue, // Warna teks putih
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors
                                  .black, // Tambahkan bayangan pada tombol
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    _buildMenuRow([
                      _buildMenuItem(
                        'Sertifikat Vaksin',
                        'assets/sertifikat.png',
                        'Sertifikat Vaksin',
                      ),
                      _buildMenuItem(
                        'Hasil Tes COVID-19',
                        'assets/hasil.png',
                        'Hasil Tes COVID-19',
                      ),
                      _buildMenuItem(
                        'EHAC',
                        'assets/ehac.png',
                        'EHAC',
                      ),
                    ]),
                    const SizedBox(height: 20),
                    _buildMenuRow([
                      _buildMenuItem(
                        'Aturan Perjalanan',
                        'assets/aturan.png',
                        'Riwayat Check-In',
                      ),
                      _buildMenuItem(
                        'Teledoktor',
                        'assets/teledokter.png',
                        'Aturan Perjalanan',
                      ),
                      _buildMenuItem(
                        'Pelayanan Kesehatan',
                        'assets/pelayanan.png',
                        'Lihat Semuanya',
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String featureName) {
    return SizedBox(
      width: 100,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 10),
            Text(
              featureName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
