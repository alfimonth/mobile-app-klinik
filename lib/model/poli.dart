class Poli {
  int? id;
  String namaPoli;

  Poli({this.id, required this.namaPoli});

  factory Poli.fromJson(Map<String, dynamic> json) =>
      Poli(id: json["id"], namaPoli: json["nama_poli"]);

  Map<String, dynamic> toJson() => {"nama_poli": namaPoli};
}
