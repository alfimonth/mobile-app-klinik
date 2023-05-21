import 'package:flutter/material.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPasien(),
              _fieldNoRekamMedis(),
              _fieldTanggalLahir(),
              _fieldNomorTelepon(),
              _fieldAlamat(),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }
}

_fieldNamaPasien() {
  return const TextField(
    decoration: InputDecoration(labelText: "Nama Pasien"),
  );
}

_fieldNoRekamMedis() {
  return const TextField(
    decoration: InputDecoration(labelText: "No Rekam Medis"),
  );
}

_fieldTanggalLahir() {
  return const TextField(
    decoration: InputDecoration(labelText: "Tanggal Lahir"),
  );
}

_fieldNomorTelepon() {
  return const TextField(
    decoration: InputDecoration(labelText: "Nomor Telepon"),
  );
}

_fieldAlamat() {
  return const TextField(
    decoration: InputDecoration(labelText: "Alamat"),
  );
}

_tombolSimpan() {
  return [
    const SizedBox(height: 20),
    ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
  ];
}
