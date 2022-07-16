import 'package:ecom/models/DataModel.dart';
import 'package:flutter/material.dart';

class ShowItem extends StatelessWidget {
  final Item item;

  const ShowItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 3 / 3,
          child: Image(
            image: NetworkImage(item.image),
          ),
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}".toString()),
      ),
    );
  }
}
