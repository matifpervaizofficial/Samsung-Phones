// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:ecom/pages/slider.dart';
import 'package:ecom/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40, left: 15),
                      child: Text(
                        "Samsung",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 15),
                      child: Text(
                        "Our mission& values",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/samsunglogo.jpeg"),
                  ),
                )
              ],
            ),
            Container(
              height: 250,
              width: double.infinity,
              child: Card(
                child: Image.asset(
                  'assets/images/headerimage.jpg',
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.justify,
                  "Samsung is committed to complying with local laws and regulations as well as applying a strict global code of conduct to all employees. It believes that ethical management is not only a tool for responding to the rapid changes in the global business environment",
                ),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.pushNamed(context, MyRoute.ProductsList);
                  }),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Check Latest Products",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Icon(Icons.open_in_new)
              ],
            ),
            GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          "Please Click on Arrow to See Products".text.make()));
                },
                child: SliderPage())
          ],
        ),
      ),
    );
  }
}
