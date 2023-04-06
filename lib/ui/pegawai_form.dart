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
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Pegawai")),
              TextField(decoration: const InputDecoration(labelText: "NIP")),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Tanggal Lahir")),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Nomor Telepon")),
              TextField(decoration: const InputDecoration(labelText: "Email")),
              TextField(
                  decoration: const InputDecoration(labelText: "Password")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}
