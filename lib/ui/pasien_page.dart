import 'package:flutter/material.dart';
import '../model/database.dart';
import '../model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
        // title: const Text("Data Pasien")
      ),
      body: ListView(
        children: <Widget>[for (Map i in pasien) PasienItem(pasien: Pasien(i))],
      ),
    );
  }
}
