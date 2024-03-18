import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Data berisi daftar nama, hobi, dan URL foto
  final List<Map<String, String>> data = [
    {
      'nama': 'Renjun Huang',
      'hobi': 'Membaca',
      'foto': 'assets/renjun.jpg',
    },
    {
      'nama': 'Mark Lee',
      'hobi': 'Menulis',
      'foto': 'assets/mark.jpg',
    },
    {
      'nama': 'Jeno Lee',
      'hobi': 'Berkebun',
      'foto': 'assets/jeno.jpg',
    },
    {
      'nama': 'Jaemin Na',
      'hobi': 'Memasak',
      'foto': 'assets/jaemin.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Hobi Member:'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          // Mendapatkan data dari list berdasarkan index
          final person = data[index];
          // Membuat card untuk setiap item
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(person['foto']!),
              ),
              title: Text(person['nama']!),
              subtitle: Text(person['hobi']!),
            ),
          );
        },
      ),
    );
  }
}
