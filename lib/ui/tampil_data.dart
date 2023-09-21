import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String data; //contoh data yang di-passing

  const TampilData({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Text(data),
      ),
    );
  }
}
