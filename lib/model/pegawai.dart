class Pegawai {
  late int id;
  late String nip;
  late String nama;
  late String tanggalLahir;
  late String nomorTelepon;
  late String email;
  late String password;

  Pegawai(Map pegawai) {
    id = pegawai['id'];
    nip = pegawai['nip'];
    nama = pegawai['nama'];
    tanggalLahir = pegawai['tanggalLahir'];
    nomorTelepon = pegawai['nomorTelepon'];
    email = pegawai['email'];
    password = pegawai['password'];
  }
}

