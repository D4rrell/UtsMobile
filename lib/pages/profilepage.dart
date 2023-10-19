import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              // Tambahkan aksi untuk menu tambahan di sini
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.blender.org/wp-content/uploads/2015/07/blender_275_artwork-500x200.jpg', // URL gambar sampul Anda
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                'https://i0.wp.com/www.rukita.co/stories/wp-content/uploads/2022/04/jake.png?resize=405%2C531&ssl=1', // URL gambar profil Anda
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Danendra Farrel',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email: danendrafarrel079@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'About: Suami Haerin Aamiin',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Edit Profil',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}
