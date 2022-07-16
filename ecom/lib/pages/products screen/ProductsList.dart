// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:ecom/pages/products%20screen/productdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/DataModel.dart';
import '../../widgets/ShowItem.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final jsonmodel =
        await rootBundle.loadString("assets/files/Datamodel.json");
    final decodeddata = jsonDecode(jsonmodel);
    var itemsdata = decodeddata["products"];
    DataModel.items =
        List.from(itemsdata).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.details)),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: (DataModel.items != null && DataModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: DataModel.items.length,
                itemBuilder: (context, index) {
                  final item = DataModel.items[index];
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetail(
                              catalog: item,
                            ),
                          ),
                        );
                      },
                      child: ShowItem(item: DataModel.items[index]));
                },
              )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
