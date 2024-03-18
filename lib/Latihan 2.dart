import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek Favorites',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gojek'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: const Text(
                    'Your Favorites',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsi untuk meng-handle action edit di sini
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(color: Colors.green)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(horizontal: 20)),
                      // Menyesuaikan padding agar tombol tidak terlalu panjang
                    ),
                    child: const Text('Edit'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  _buildMenuRow([
                    _buildMenuItem('GoRide', 'assets/goride.png', 'GoRide'),
                    _buildMenuItem('GoCar', 'assets/gocar.jpeg', 'GoCar'),
                    _buildMenuItem('GoFood', 'assets/gofood.jpeg', 'GoFood'),
                    _buildMenuItem('GoSend', 'assets/gosend.jpeg', 'GoSend'),
                  ]),
                  const SizedBox(height: 20),
                  _buildMenuRow([
                    _buildMenuItem('GoMart', 'assets/gomart.jpeg', 'GoMart'),
                    _buildMenuItem('GoPulsa', 'assets/gopulsa.jpeg', 'GoPulsa'),
                    _buildMenuItem(
                        'Check-in', 'assets/gotagihan.jpeg', 'Check-in'),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
            Image.asset(imagePath, width: 90, height: 90),
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
