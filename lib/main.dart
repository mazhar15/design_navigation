import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI & Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DARAZ(),
    );
  }
}

class DARAZ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DARAZ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Daraz App!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the category screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Category()),
                );
              },
              child: Text('Explore Categories'),
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Man'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManCategoryScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Women'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WomenCategoryScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Kids'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KidsCategoryScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Selected Category Content Goes Here',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class ManCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Man Category'),
      ),
      body: Center(
        child: Text(
          'Explore products for Men here!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class WomenCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Women Category'),
      ),
      body: Center(
        child: Text(
          'Discover items for Women in this category!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class KidsCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kids Category'),
      ),
      body: Center(
        child: Text(
          'Explore products for Kids in this section!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
