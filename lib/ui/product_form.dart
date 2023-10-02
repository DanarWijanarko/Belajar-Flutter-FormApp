import 'package:flutter/material.dart';
import 'package:project2/ui/product_detail.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final _textBoxKodeProductController = TextEditingController();
  final _textBoxNamaProductController = TextEditingController();
  final _textBoxHargaProductController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _textBoxKodeProduct(),
        _textBoxNamaProduct(),
        _textBoxHargaProduct(),
        _tombolSimpan()
      ],
    );
  }

  _textBoxKodeProduct() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(left: 5),
          labelText: "Kode Produk",
        ),
        controller: _textBoxKodeProductController,
      ),
    );
  }

  _textBoxNamaProduct() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(left: 5),
          labelText: "Nama Produk",
        ),
        controller: _textBoxNamaProductController,
      ),
    );
  }

  _textBoxHargaProduct() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(left: 5),
          labelText: "Harga Produk",
        ),
        controller: _textBoxHargaProductController,
      ),
    );
  }

  _tombolSimpan() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ElevatedButton(
          onPressed: () {
            String kodeProduk = _textBoxKodeProductController.text;
            String namaProduk = _textBoxNamaProductController.text;
            int harga = int.parse(_textBoxHargaProductController.text);

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetail(
                  harga: harga,
                  kodeProduk: kodeProduk,
                  namaProduk: namaProduk,
                ),
              ),
            );
          },
          child: const Text("Simpan")),
    );
  }
}
