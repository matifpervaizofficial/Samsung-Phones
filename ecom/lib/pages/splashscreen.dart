// ignore_for_file: sort_child_properties_last, prefer_const_constructors, library_private_types_in_public_api

import 'dart:async';

import 'package:ecom/utils/routes.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, MyRoute.loginRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Image.network(
      "https://cdn.wallpapersafari.com/16/27/uzNp9Y.jpg",
      fit: BoxFit.fill,
    ));
  }
}
