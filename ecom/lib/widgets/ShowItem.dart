// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:ecom/models/DataModel.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class ShowItem extends StatelessWidget {
  final Item item;

  const ShowItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              //tag is used to connect two similar things
              tag: Key(item.id.toString()),
              child: AspectRatio(
                  aspectRatio: 3 / 4, child: Image.network(item.image)),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item.name.text.lg.color(Colors.deepPurple).bold.make(),
              item.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${item.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.CartPage);
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    )),
                    child: "Add to Cart".text.make(),
                  )
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
  // return Padding(
  //   padding: const EdgeInsets.all(8.0),
  //   child: Container(
  //     height: 150,
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //       color: Colors.grey,
  //       borderRadius: BorderRadius.only(
  //         topRight: Radius.circular(20),
  //         topLeft: Radius.circular(20),
  //       ),
  //     ),
  //     child: Row(children: [
  //       Padding(
  //         padding: const EdgeInsets.all(10.0),
  //         child: Container(
  //           decoration:
  //               BoxDecoration(borderRadius: BorderRadius.circular(30)),
  //           child: Image(
  //             height: 100,
  //             width: 100,
  //             image: NetworkImage(item.image),
  //           ),
  //         ),
  //       ),
  //       Expanded(
  //         child: Container(
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               SizedBox(
  //                 height: 8,
  //               ),
  //               Text(item.name),
  //               Text(item.desc),
  //               ButtonBar(
  //                 alignment: MainAxisAlignment.spaceBetween,
  //                 buttonHeight: 10,
  //                 buttonMinWidth: 10,
  //                 children: [
  //                   Text(item.price.toString()),
  //                   ElevatedButton(
  //                     onPressed: () {
  //                       Navigator.push(
  //                           context,
  //                           MaterialPageRoute(
  //                               builder: (context) => ProductBuy()));
  //                     },
  //                     child: Text("Buy"),
  //                   )
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ]),
  //   ),
  // );
}
