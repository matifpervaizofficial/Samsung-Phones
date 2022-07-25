import 'package:flutter/material.dart';

import '../models/DataModel.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DataModel.items.length,
        itemBuilder: (context, index) {
          return Showslider(
            slideritem: DataModel.items[index],
          );
        },
      ),
    );
  }
}

class Showslider extends StatelessWidget {
  final Item slideritem;
  const Showslider({
    Key? key,
    required this.slideritem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 200,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Image(
                image: NetworkImage(slideritem.image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
