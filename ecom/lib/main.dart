// ignore_for_file: prefer_const_constructors, void_checks

import 'package:ecom/pages/cartpage.dart';
import 'package:ecom/pages/home/Home.dart';
import 'package:ecom/pages/admin/Signup.dart';
import 'package:ecom/pages/admin/login.dart';
import 'package:ecom/pages/products%20screen/ProductsGrid.dart';
import 'package:ecom/pages/splashscreen.dart';
import 'package:ecom/utils/routes.dart';
import 'package:flutter/material.dart';

import 'pages/products screen/ProductsList.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/splashroute",
      routes: {
        MyRoute.OnBoard: (context) => OnBoard(),
        MyRoute.homeRoute: (context) => Home(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.signupRoute: (context) => SignupPage(),
        MyRoute.ProductsList: (context) => ProductsList(),
        MyRoute.ProductsGrid: (context) => ProductsGrid(),
        MyRoute.CartPage: (context) => cart(),
      },
    );
  }
}
