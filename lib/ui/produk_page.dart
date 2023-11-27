import 'package:flutter/material.dart';
import 'package:flutter_p3/ui/produk_detail.dart';
import 'package:flutter_p3/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Produk"),
        actions: [
          GestureDetector(
            //untuk menambahkan icon + barang
            child: Icon(Icons.add),
            //berpindah halaman ke produk form
            onTap: () async {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => ProdukForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          //list 1
          ItemProduk(
            kodeProduk: "A001",
            namaProduk: "Mesin Cuci",
            harga: 200000,
          ),
          ItemProduk(
            kodeProduk: "A002",
            namaProduk: "TV",
            harga: 300000,
          ),
          ItemProduk(
            kodeProduk: "A003",
            namaProduk: "Kulkas",
            harga: 1000000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  //const ItemProduk({super.key});
  final String kodeProduk;
  final String namaProduk;
  final int harga;
  //membuat constructor
  ItemProduk({
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(kodeProduk),
          subtitle: Text(harga.toString()), //parsing dari int ke string
        ),
      ),
      onTap: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => ProdukDetail(
                  kodeProduk: kodeProduk,
                  namaProduk: namaProduk,
                  harga: harga,
                )));
      },
    );
  }
}
