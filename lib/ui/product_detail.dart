import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ProductDetail(
      {super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 13, 152, 233),
        title: const Text("Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kode Produk : ${widget.kodeProduk}"),
            Text("Nama Produk : ${widget.namaProduk}"),
            Text("Harga Produk : ${widget.harga}"),
          ],
        ),
      ),
    );
  }
}
