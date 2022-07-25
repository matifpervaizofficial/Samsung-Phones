// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Hero(
                tag: Key(catalog.id.toString()),
                child: Image(
                  image: NetworkImage(catalog.image),
                ),
              ),
            ),
          ),
          Expanded(
            child: VxArc(
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              //height is used to give the edge value
              height: 20,
              child: Container(
                color: Color.fromARGB(255, 230, 235, 238),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Text(
                        catalog.name,
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        catalog.desc,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                  StadiumBorder(),
                )),
                child: "Buy".text.make(),
              )
            ],
          ).p(20.0).wh(double.infinity, 60)
        ],
      ),
    );
  }
}
