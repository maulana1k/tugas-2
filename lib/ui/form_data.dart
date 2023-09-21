import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _nimController = TextEditingController();
  final _namaController = TextEditingController();
  final _tahunController = TextEditingController();

  _inputNim() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nimController,
    );
  }

  _inputNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController,
    );
  }

  _inputTahun() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _tahunController,
    );
  }

  _simpan() {
    String nim = _nimController.text;
    String nama = _namaController.text;
    String tahun = _tahunController.text;
    num umur = DateTime.now().year - int.parse(tahun);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            TampilData(data: "Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            _inputNama(),
            _inputNim(),
            _inputTahun(),
            ElevatedButton(onPressed: _simpan, child: const Text("Simpan"))
          ],
        ),
      ),
    );
  }
}
