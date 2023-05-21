import 'package:flutter/material.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({Key? key}) : super(key: key);
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai(),
              _fieldNIP(),
              _fieldTangalLahir(),
              _fieldNomorTelepon(),
              _fieldEmail(),
              _fieldPassword(),
              const SizedBox(height: 20),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPegawai(){
    return TextField(
                  decoration: const InputDecoration(labelText: "Nama Pegawai"));
  }

  _fieldNIP(){
    return TextField(decoration: const InputDecoration(labelText: "NIP"));
  }

  _fieldTangalLahir(){
    return TextField(
                  decoration:
                      const InputDecoration(labelText: "Tanggal Lahir"));
  }

  _fieldNomorTelepon(){
    return TextField(
                  decoration:
                      const InputDecoration(labelText: "Nomor Telepon"));
  }

  _fieldEmail(){
    return TextField(decoration: const InputDecoration(labelText: "Email"));
  }

  _fieldPassword(){
    return TextField(
                  decoration: const InputDecoration(labelText: "Password"));
  }
  _tombolSimpan(){
    return ElevatedButton(onPressed: () {}, child: const Text("Simpan"));
  }
}
