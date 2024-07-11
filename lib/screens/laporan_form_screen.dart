import 'package:flutter/material.dart';
import '../models/laporan.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class LaporanFormScreen extends StatefulWidget {
  @override
  _LaporanFormScreenState createState() => _LaporanFormScreenState();
}

class _LaporanFormScreenState extends State<LaporanFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _kecamatanController = TextEditingController();
  final _desaController = TextEditingController();
  final _alamatController = TextEditingController();
  final _laporanController = TextEditingController();
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _saveLaporan() {
    if (_formKey.currentState!.validate()) {
      final newLaporan = Laporan(
        kecamatan: _kecamatanController.text,
        desa: _desaController.text,
        alamat: _alamatController.text,
        laporan: _laporanController.text,
        foto: _image?.path ?? '',
      );
      Navigator.pop(context, newLaporan);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Laporan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: _kecamatanController,
                decoration: InputDecoration(labelText: 'Kecamatan'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter kecamatan';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _desaController,
                decoration: InputDecoration(labelText: 'Desa'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter desa';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _alamatController,
                decoration: InputDecoration(labelText: 'Alamat'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter alamat';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _laporanController,
                decoration: InputDecoration(labelText: 'Laporan'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter laporan';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              _image == null
                  ? Text('No image selected.')
                  : Image.file(_image!),
              ElevatedButton(
                onPressed: _pickImage,
                child: Text('Pick Image'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _saveLaporan,
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
