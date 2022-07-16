// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../models/DataModel.dart';

class ProductDetail extends StatelessWidget {
  final Item catalog;

  const ProductDetail({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Center(
            child: Image(
              image: NetworkImage(catalog.image),
            ),
          ),
        ],
      ),
    );
  }
}
