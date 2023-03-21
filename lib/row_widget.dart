import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Row"),
      ),
      body: Row(
        children: const [
          Text("Row 1"),
          Text("Row 2"),
          Text("Row 3"),
          Text("Row 4")
        ],
      ),
    );
  }
}