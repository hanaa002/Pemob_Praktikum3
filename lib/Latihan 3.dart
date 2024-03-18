import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Twitter'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/header.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: MediaQuery.of(context).size.height / 2.3 - 100 - 16,
                    child: Container(
                      width: 104,
                      height: 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(52),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/profile.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: MediaQuery.of(context).size.height / 2.3 - 100 - 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height:
                                110), // Untuk memberi ruang agar nama tidak bertabrakan dengan gambar
                        Text(
                          'UPN Veteran Jawa Timur', // Nama
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '@upnvjt_official', // Username
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              40, // Lebar maksimum untuk bio
                          child: Text(
                            'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh HUMAS UPN "VETERAN" JAWA TIMUR Kampus Bela Negara', // Bio
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            overflow: TextOverflow
                                .ellipsis, // Jika bio terlalu panjang, potong dengan ellipsis
                            maxLines: 3, // Tampilkan bio dalam 3 baris
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Menambahkan jarak sebelum teks "Translate bio"
                        Text(
                          'Translate bio',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: MediaQuery.of(context).size.height / 2.3 - 100 - 16,
                    child: ElevatedButton(
                      onPressed: () {
                        // Logika ketika tombol follow ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .black, // Mengubah warna latar belakang tombol menjadi hitam
                      ),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors
                              .white, // Mengubah warna teks tombol menjadi putih
                        ),
                      ), // Teks tombol follow
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 70,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                    ),
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
