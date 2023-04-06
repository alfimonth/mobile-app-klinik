import 'package:flutter/material.dart';
import '../model/database.dart';
import '../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
        // title: const Text("Data Pegawai")
      ),
      body: ListView(
        children: <Widget>[
          for (Map i in pegawai) PegawaiItem(pegawai: Pegawai(i))
          // GestureDetector(
          //   child: Card(
          //     child: ListTile(title: Text(i['nama'])),
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) =>
          //                 PegawaiDetail(pegawai: new Pegawai(i))));
          //   },
          // )
        ],
      ),
    );
  }
}
