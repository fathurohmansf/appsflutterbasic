import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  ProdukDetail({
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  });

  //const ProdukDetail({super.key});

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Detail'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Kode Produk : " + widget.kodeProduk),
            ),
          ),
          Card(
            child: ListTile(
              //title: Text("Kode Produk : " + widget.kodeProduk),
              title: Text("Nama Produk : ${widget.namaProduk}"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Harga Produk : ${widget.harga.toString()}"),
            ),
          )
        ],
      ),
    );
  }
}
