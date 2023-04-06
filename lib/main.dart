import 'package:flutter/material.dart';
// import 'hello_world.dart';
// import 'column_widget.dart';
// import 'row_widget.dart';
// import 'baris_kolom.dart';
import 'ui/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Klinik',
      // home: HelloWorld(),
      // home: ColumnWidget(),
      // home: RowWidget(),
      // home: BarisKolomWidget(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
