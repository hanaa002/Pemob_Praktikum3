import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'For You',
                ),
                Tab(
                  text: 'Following',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Item 1'),
                  ),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Item 2'),
                  ),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Item 3'),
                  ),
                ],
              ),
              FollowingTab(), // Menggunakan widget FollowingTab di sini
            ],
          ),
        ),
      ),
    );
  }
}

class FollowingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      itemCount: 15,
      itemBuilder: (context, index) {
        return Center(
          child: SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                'assets/profile.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
