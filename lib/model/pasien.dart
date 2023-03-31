class Pasien {
  late int id;
  late String nama;
  late String noRm;
  late String tanggalLahir;
  late String nomorTelepon;
  late String alamat;

  Pasien(Map pasien) {
    id = pasien['id'];
    nama = pasien['nama'];
    noRm = pasien['noRm'];
    tanggalLahir = pasien['tanggalLahir'];
    nomorTelepon = pasien['nomorTelepon'];
    alamat = pasien['alamat'];
  }
}
