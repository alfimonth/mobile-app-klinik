import 'package:flutter/material.dart';
import '../model/database.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pasien")),
      body: ListView(
        children: <Widget>[
          for (Map i in pasien)
            GestureDetector(
              child: Card(
                child: ListTile(title: Text(i['nama'])),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PasienDetail(pasien: new Pasien(i))));
              },
            )
        ],
      ),
    );
  }
}
