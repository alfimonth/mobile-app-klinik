class Pegawai {
  int? id;
  String nip;
  String nama;
  DateTime tanggalLahir;
  String nomorTelepon;
  String email;
  String password;

  Pegawai(
      {this.id,
      required this.nip,
      required this.nama,
      required this.tanggalLahir,
      required this.nomorTelepon,
      required this.email,
      required this.password});

  factory Pegawai.fromJson(Map<String, dynamic> json) => Pegawai(
        id: json["id"],
        nip: json["nip"],
        nama: json["nama"],
        tanggalLahir: DateTime.parse(json["tgl_lahir"]),
        nomorTelepon: json["no_telp"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "nip": nip,
        "nama": nama,
        "tgl_lahir": tanggalLahir.toIso8601String(),
        "no_telp": nomorTelepon,
        "email": email,
        "password": password
      };
}
