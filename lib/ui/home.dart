import 'package:flutter/material.dart';
import 'poli_page.dart';
import 'pegawai_page.dart';
import 'pasien_page.dart';
import 'package:aplikasi_flutter_pertamaku/GetData1.dart';
import 'package:aplikasi_flutter_pertamaku/GetDataLaravel.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: ListView(
        children: [
        GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli"),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PoliPage())); 
            },
          ),
        GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pegawai"),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PegawaiPage())); 
            },
          ),
        GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pasien"),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PasienPage())); 
            },
          ),
        GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Get Data 1"),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Test())); 
            },
          ),
        GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Get Data Laravel"),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Api())); 
            },
          ),
        ],
      ),
    );
  }

}

