import 'package:flutter/material.dart';
import '../ui/beranda.dart';
import '../ui/login.dart';
import '../ui/poli_page.dart';
import '../ui/pegawai_page.dart';
import '../ui/pasien_page.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("admin@admin.com")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Beranda"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Beranda()));
            },
          ),
          ListTile(
            leading: Icon(Icons.accessible),
            title: Text("Poli"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Pegawai"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text("Pasien"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text("Keluar"),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                  (Route<dynamic> route) => false);
            },
          )
        ],
      ),
    );
  }
}
