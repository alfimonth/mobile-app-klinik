import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import '../ui/pegawai_detail.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiUpdateForm({Key? key, required this.pegawai}) : super(key: key);
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPegawaiCtrl = TextEditingController();
  final _nIPCtrl = TextEditingController();
  final _tanggalLahirCtrl = TextEditingController();
  final _nomorTeleponCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPegawaiCtrl.text = widget.pegawai.nama;
      _nIPCtrl.text = widget.pegawai.nip;
      _tanggalLahirCtrl.text = widget.pegawai.tanggalLahir;
      _nomorTeleponCtrl.text = widget.pegawai.nomorTelepon;
      _emailCtrl.text = widget.pegawai.email;
      _passwordCtrl.text = widget.pegawai.password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pegawai")),
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
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
    );
  }

  _fieldNIP() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIP"),
      controller: _nIPCtrl,
    );
  }

  _fieldTangalLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir"),
      controller: _tanggalLahirCtrl,
    );
  }

  _fieldNomorTelepon() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nomor Telepon"),
      controller: _nomorTeleponCtrl,
    );
  }

  _fieldEmail() {
    return TextField(
      decoration: const InputDecoration(labelText: "Email"),
      controller: _emailCtrl,
    );
  }

  _fieldPassword() {
    return TextField(
      decoration: const InputDecoration(labelText: "Password"),
      controller: _passwordCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pegawai pegawai = new Pegawai({
            'id': 999,
            'nip': _nIPCtrl.text,
            'nama': _namaPegawaiCtrl.text,
            'tanggalLahir': _tanggalLahirCtrl.text,
            'nomorTelepon': _nomorTeleponCtrl.text,
            'email': _emailCtrl.text,
            'password': _passwordCtrl.text,
          });
          Navigator.pop(context);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        child: const Text("Simpan Perubahan"));
  }
}
