/// Ini merupakan kelas yang digunakan untuk menyimpan data laporan.
/// Data yang disimpan akan diubah menjadi JSON dengan operasi [to.Json].

class Laporan {
  final String nama;
  final String alamat;
  final String patokan;
  Laporan({
    required this.nama,
    required this.alamat,
    required this.patokan,
  });

  toJson() {
    return {
      'nama': nama,
      'alamat': alamat,
      'patokan': patokan,
    };
  }

  // factory .fromSnapshot(DocumentSnapshot snapshot) {
  //   return Laporan(
  //     nama: snapshot.data['nama'],
  //     alamat: snapshot.data['alamat'],
  //     patokan: snapshot.data['patokan'],
  //   );
  // }
}
