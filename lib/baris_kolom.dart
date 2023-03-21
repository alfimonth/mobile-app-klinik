import 'package:flutter/material.dart';

class BarisKolomWidget extends StatelessWidget {
  const BarisKolomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris dan Kolom"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var i = 1; i < 4; i++)
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var j = 1; j < 4; j++) Text("Baris $j, Kolom $i")
              ],
            ),
          // Column(
          //   children: const [
          //     Text("Baris 1, Kolom 1"),
          //     Text("Baris 2, Kolom 1"),
          //     Text("Baris 3, Kolom 1"),
          //     Text("Baris 4, Kolom 1")
          //   ],
          // ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: const [
          //     Text("Baris 1, Kolom 2"),
          //     Text("Baris 2, Kolom 2"),
          //     Text("Baris 3, Kolom 2"),
          //     Text("Baris 4, Kolom 2")
          //   ],
          // ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: const [
          //     Text("Baris 1, Kolom 3"),
          //     Text("Baris 2, Kolom 3"),
          //     Text("Baris 3, Kolom 3"),
          //     Text("Baris 4, Kolom 3")
          //   ],
          // )
        ],
      ),
    );
  }
}
