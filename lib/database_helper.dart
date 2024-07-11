import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'models/laporan.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'laporan.db');
    return openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE laporan(id INTEGER PRIMARY KEY, kecamatan TEXT, desa TEXT, alamat TEXT, laporan TEXT, foto TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertLaporan(Laporan laporan) async {
    final db = await database;
    await db.insert(
      'laporan',
      laporan.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Laporan>> laporanList() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('laporan');
    return List.generate(maps.length, (i) {
      return Laporan(
        id: maps[i]['id'],
        kecamatan: maps[i]['kecamatan'],
        desa: maps[i]['desa'],
        alamat: maps[i]['alamat'],
        laporan: maps[i]['laporan'],
        foto: maps[i]['foto'],
      );
    });
  }
}
