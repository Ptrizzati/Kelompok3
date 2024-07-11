import 'package:flutter/material.dart';
import 'laporan_form_screen.dart';
import '../models/laporan.dart';

class LaporanListScreen extends StatefulWidget {
  @override
  _LaporanListScreenState createState() => _LaporanListScreenState();
}

class _LaporanListScreenState extends State<LaporanListScreen> {
  List<Laporan> laporanList = [];

  void _navigateToAddLaporan() async {
    final newLaporan = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LaporanFormScreen()),
    );

    if (newLaporan != null) {
      setState(() {
        laporanList.add(newLaporan);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laporan List'),
      ),
      body: ListView.builder(
        itemCount: laporanList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(laporanList[index].kecamatan),
            subtitle: Text(laporanList[index].laporan),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddLaporan,
        child: Icon(Icons.add),
      ),
    );
  }
}
