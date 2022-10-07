import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_purchase_app/Screens/Nav_Home.dart';
import 'package:pizza_purchase_app/Screens/add_pizza_page.dart';
import 'package:pizza_purchase_app/Screens/homepage.dart';
import 'package:pizza_purchase_app/Screens/intro_page.dart';
import 'package:pizza_purchase_app/Screens/login_page.dart';
import 'package:pizza_purchase_app/Screens/signup_page.dart';
import 'package:pizza_purchase_app/Screens/trial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
              prefixIconColor: Colors.white,
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                  // borderSide: BorderSide(width: 1, color: Colors.white),
                  ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Color.fromARGB(255, 179, 57, 201))))),
      home: HomePage(),
    );
  }
}
