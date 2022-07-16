// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:ecom/pages/products%20screen/productdetail.dart';
import 'package:flutter/material.dart';

import '../../models/DataModel.dart';

class Griditems extends StatelessWidget {
  const Griditems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 300,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 30,
            mainAxisSpacing: 20)),
        itemCount: DataModel.items.length,
        itemBuilder: ((context, index) {
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
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadowColor: Color.fromRGBO(156, 39, 176, 1),
              elevation: 15,
              child: GridTile(
                header: Container(
                  color: Colors.deepPurple,
                  height: 30,
                  child: Center(
                    child: Text(
                      item.name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image(
                    image: NetworkImage(item.image),
                  ),
                ),
                footer: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.price.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              size: 20,
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 20,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              size: 20,
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
