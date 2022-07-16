// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:ecom/utils/routes.dart';
import 'package:flutter/material.dart';

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
            Container(
              width: 340,
              child: Text(
                textAlign: TextAlign.justify,
                "Samsung is committed to complying with local laws and regulations as well as applying a strict global code of conduct to all employees. It believes that ethical management is not only a tool for responding to the rapid changes in the global business environment",
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 110,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.ProductsList);
                },
                child: Row(
                  children: [
                    Text("check"),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.ProductsGrid);
                },
                child: Text("Grid"))
          ],
        ),
      ),
    );
  }
}
