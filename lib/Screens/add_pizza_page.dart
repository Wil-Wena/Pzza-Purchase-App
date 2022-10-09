//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_purchase_app/widgets/pizzaCard.dart';

class AddPizza extends StatefulWidget {
  final String img, pizzaName;
  final String pizzaPrice;
  const AddPizza({
    Key? key,
    required this.img,
    required this.pizzaName,
    required this.pizzaPrice,
  }) : super(key: key);

  @override
  State<AddPizza> createState() => _AddPizzaState();
}

bool _isFavorite = false;

class _AddPizzaState extends State<AddPizza> {
  int m = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints.expand(width: 350, height: 350),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.img), fit: BoxFit.cover)),
              child: Expanded(
                  child: Stack(
                children: [
                  Positioned(
                      bottom: 25,
                      right: 30,
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: IconButton(
                          icon: Icon(
                            _isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              _isFavorite = !_isFavorite;
                            });
                          },
                        ),
                      ))
                ],
              )),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.pizzaName,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        widget.pizzaPrice,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          child: const Icon(
                            Icons.add_circle_outline_outlined,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            setState(() {
                              if (m < 1) {
                                m = 0;
                              } else {
                                m--;
                              }
                            });
                          },
                        ),
                        SizedBox(width: 8),
                        Text("$m"),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              m++;
                            });
                          },
                          child: const Icon(Icons.add_circle_outline_outlined,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recipe",
                          style: GoogleFonts.poppins(fontSize: 20),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    Text(
                      "Mozzarela, Pesto, Proscuitto, Tomatoes, leaves, see more...",
                      style:
                          GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    // TextField(
                    //   decoration: InputDecoration(
                    //       prefixIcon: Icon(Icons.navigation_rounded),
                    //       label: Text("Location"),
                    //       border: OutlineInputBorder()),
                    // ),
                    Row(
                      children: [
                        Icon(Icons.navigation_rounded),
                        SizedBox(width: 10),
                        Text(
                          "Enter Location",
                          style: GoogleFonts.lato(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),

                    SizedBox(height: 25),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: Row(
                children: const [
                  Icon(Icons.electric_bike),
                  SizedBox(width: 5),
                  Text("Free"),
                  SizedBox(width: 30),
                  Icon(Icons.more_time_rounded),
                  SizedBox(width: 5),
                  Text("20:30"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              constraints: BoxConstraints.expand(width: 350, height: 51),
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$m Items",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w400, color: Colors.white)),
                    Text(
                      widget.pizzaPrice,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
