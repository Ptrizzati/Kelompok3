class Laporan {
  int? id;
  String kecamatan;
  String desa;
  String alamat;
  String laporan;
  String foto;

  Laporan({
    this.id,
    required this.kecamatan,
    required this.desa,
    required this.alamat,
    required this.laporan,
    required this.foto,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'kecamatan': kecamatan,
      'desa': desa,
      'alamat': alamat,
      'laporan': laporan,
      'foto': foto,
    };
  }
}
