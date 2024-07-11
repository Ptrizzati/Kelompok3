import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jaga Jalan'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Tentang Kami'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Masuk'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Daftar'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('65 Pengguna'),
                      subtitle: Text('Daftar Pengguna Jaga Jalan'),
                    ),
                    ListTile(
                      leading: Icon(Icons.report),
                      title: Text('85 Pengaduan'),
                      subtitle: Text('Jumlah Pengaduan yang sudah dilaporkan'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle),
                      title: Text('18 Tuntas'),
                      subtitle: Text('Jumlah Laporan Yang Sudah Ditangani'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tata Cara',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.send),
                      title: Text('Kirim Laporan'),
                      subtitle: Text('Tulis laporan keluhan Anda dengan jelas'),
                    ),
                    ListTile(
                      leading: Icon(Icons.verified_user),
                      title: Text('Proses Verifikasi'),
                      subtitle: Text('Tunggu sampai laporan Anda diverifikasi oleh admin/petugas'),
                    ),
                    ListTile(
                      leading: Icon(Icons.update),
                      title: Text('Tindak Lanjut'),
                      subtitle: Text('Laporan Anda sedang dalam proses dan tindak lanjut'),
                    ),
                    ListTile(
                      leading: Icon(Icons.done),
                      title: Text('Selesai'),
                      subtitle: Text('Laporan Pengaduan telah selesai ditindak'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tentang Kami',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Jaga Jalan',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Adalah sistem laporan kerusakan jalan yang mempermudah masyarakat untuk memberikan laporan dan informasi terkait kerusakan jalan.',
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Tujuan Jaga Jalan',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text('• Mempercepat proses pelaporan dan perbaikan jalan'),
                      Text('• Memberikan sarana bagi masyarakat untuk dengan mudah melaporkan kerusakan jalan'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}