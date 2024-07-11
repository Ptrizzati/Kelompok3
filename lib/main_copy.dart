import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jaga Jalan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(
            217, 217, 217, 0.35), // Warna D9D9D9 dengan opasitas 35%
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 50, // Sesuaikan tinggi logo
              ),
              SizedBox(width: 5), // Jarak antara gambar dan teks
              Text(
                'JAGA JALAN',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.brown,
          toolbarHeight: 80, // Menyesuaikan tinggi AppBar agar lebih rapat
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10.0), // Jarak antara AppBar dan logo pertama
              Image.asset(
                'assets/images/logo.png',
                height: 100,
              ),
              SizedBox(height: 20.0), // Jarak antara logo dan form login
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.0), // Jarak antara form-login
                    Text(
                      'NIK',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(145, 186, 216, 0.41),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan NIK',
                          hintStyle: TextStyle(
                            fontFamily: 'Arial',
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Nama',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(145, 186, 216, 0.41),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan Nama',
                          hintStyle: TextStyle(
                            fontFamily: 'Arial',
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(145, 186, 216, 0.41),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan Email',
                          hintStyle: TextStyle(
                            fontFamily: 'Arial',
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'No Handphone',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(145, 186, 216, 0.41),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan No Handphone',
                          hintStyle: TextStyle(
                            fontFamily: 'Arial',
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Kata Sandi',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(145, 186, 216, 0.41),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Kata Sandi',
                          hintStyle: TextStyle(
                            fontFamily: 'Arial',
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Konfirmasi Kata Sandi',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(145, 186, 216, 0.41),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Konfirmasi Kata Sandi',
                          hintStyle: TextStyle(
                            fontFamily: 'Arial',
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 20.0), // Jarak antara form-login dan tombol
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          // Aksi saat tombol "Daftar" ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xFF434A51), // Warna sesuai dengan yang diminta (434A51)
                          padding: EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal:
                                  24.0), // Sesuaikan lebar dan tinggi tombol
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Corner radius sesuai dengan yang diminta (8)
                          ),
                        ),
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize:
                                16.0, // Ukuran teks sesuai kebutuhan
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
