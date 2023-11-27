import 'package:flutter/material.dart';
import 'package:flutter_p3/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //title: Text(widget.title),
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan(),
            // ElevatedButton(onPressed: () {}, child: Text('Simpan'))
            // _textboxKodeProduk(),
            // _textboxNamaProduk(),
            // _textboxHargaProduk(),
            //_tombolSimpan()
          ],
        ),
      ),
    );
  }

  Widget _textboxKodeProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  Widget _textboxNamaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  Widget _textboxHargaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Harga"),
      controller: _hargaProdukTextboxController,
      keyboardType: TextInputType.number,
    );
  }

  Widget _tombolSimpan() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Text('Simpan'),
        onPressed: () {
          String kode_produk = _kodeProdukTextboxController.text;
          String nama_produk = _namaProdukTextboxController.text;
          int harga = int.parse(_hargaProdukTextboxController.text);
          //buat navigator untuk menyimpan ke detail produk
          Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (context) => ProdukDetail(
                kodeProduk: kode_produk,
                namaProduk: nama_produk,
                harga: harga,
              ),
            ),
          );
        },
      ),
    );
  }
}




      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),