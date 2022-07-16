// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, sort_child_properties_last

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/DataModel.dart';
import 'gridItems.dart';
import 'gridheadsec.dart';

class ProductsGrid extends StatefulWidget {
  const ProductsGrid({Key? key}) : super(key: key);

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
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
    return SafeArea(
      bottom: true,
      top: false,
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              GridHeadSec(),
              (DataModel.items != null && DataModel.items.isNotEmpty)
                  ? Expanded(
                      child: Container(
                        //height: 300,
                        child: Griditems(),
                      ),
                    )
                  : Center(child: CircularProgressIndicator()),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
