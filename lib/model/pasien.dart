class Pasien {
  int? id;
  String nama;
  String noRm;
  DateTime tanggalLahir;
  String nomorTelepon;
  String alamat;

  Pasien(
      {this.id,
      required this.nama,
      required this.noRm,
      required this.tanggalLahir,
      required this.nomorTelepon,
      required this.alamat});

  factory Pasien.fromJson(Map<String, dynamic> json) => Pasien(
        id: json["id"],
        noRm: json["nomor_rm"],
        nama: json["nama"],
        tanggalLahir: DateTime.parse(json["tanggal_lahir"]),
        nomorTelepon: json["nomor_telepon"],
        alamat: json["alamat"],
      );

  Map<String, dynamic> toJson() => {
        "nomor_rm": noRm,
        "nama": nama,
        "tanggal_lahir": tanggalLahir.toIso8601String(),
        "nomor_telepon": nomorTelepon,
        "alamat": alamat,
      };
}
