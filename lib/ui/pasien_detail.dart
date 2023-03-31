import 'package:flutter/material.dart';
import '../model/pasien.dart';
import '../model/database.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail Pasien")),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(textAlign: TextAlign.left, 'Nama'),
                      Text(textAlign: TextAlign.left, 'No Rekam Medis'),
                      Text(textAlign: TextAlign.left, 'Tanggal Lahir'),
                      Text(textAlign: TextAlign.left, 'Nomor Telepon'),
                      Text(textAlign: TextAlign.left, 'Alamat')
                    ]),
                Column(children: const [
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : ')
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.pasien.nama}"),
                    Text("${widget.pasien.noRm}"),
                    Text("${widget.pasien.tanggalLahir}"),
                    Text("${widget.pasien.nomorTelepon}"),
                    Text("${widget.pasien.alamat}"),
                  ],
                )
              ],
            ),

            // Text(
            //   "Nama Pasien : ${widget.pasien.nama}",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   "Nomor Rekam Medis: ${widget.pasien.noRm}",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   "Nama Pasien : ${widget.pasien.nama}",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   "Nama Pasien : ${widget.pasien.nama}",
            //   style: TextStyle(fontSize: 20),
            // ),

            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text("Ubah")),
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text("Hapus")),
              ],
            )
          ],
        ));
  }
}
