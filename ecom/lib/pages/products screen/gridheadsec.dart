import 'package:flutter/material.dart';

class GridHeadSec extends StatelessWidget {
  const GridHeadSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Samsung Galaxy ",
          style: TextStyle(fontSize: 30),
        ),
        Text(
          " Items",
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
