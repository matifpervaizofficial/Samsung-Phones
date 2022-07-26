// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class cart extends StatelessWidget {
  const cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          " Cart ",
          style: TextStyle(color: Colors.deepPurple, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: Cartlist(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$9999".text.xl2.make(),
                ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Please fill Your items"),
                        ),
                      );
                    },
                    child: "Buy".text.make())
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Cartlist extends StatefulWidget {
  const Cartlist({Key? key}) : super(key: key);

  @override
  State<Cartlist> createState() => _CartlistState();
}

class _CartlistState extends State<Cartlist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: ((context, index) => ListTile(
            leading: Icon(Icons.done),
            title: Text("Item 1"),
            trailing: IconButton(
                icon: Icon(
                  Icons.remove_circle_outline_outlined,
                  color: Colors.deepPurple,
                ),
                onPressed: () {}),
          )),
    );
  }
}
