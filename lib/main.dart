import 'package:flutter/material.dart';
import 'package:project2/ui/product_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 13, 152, 233),
          title: const Text("Hello World"),
        ),
        body: const SingleChildScrollView(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: ProductForm(),
        ),
      ),
    );
  }
}