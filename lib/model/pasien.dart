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
        noRm: json["no_rm"],
        nama: json["nama"],
        tanggalLahir: DateTime.parse(json["tgl_lahir"]),
        nomorTelepon: json["no_telp"],
        alamat: json["alamat"],
      );

  Map<String, dynamic> toJson() => {
        "no_rm": noRm,
        "nama": nama,
        "tgl_lahir": tanggalLahir.toIso8601String(),
        "no_telp": nomorTelepon,
        "alamat": alamat,
      };
}
