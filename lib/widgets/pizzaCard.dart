import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_purchase_app/Screens/add_pizza_page.dart';

Widget PizzaCard(
    String image, String price, String calorie, String type, String rating) {
  return Column(
    children: [
      Container(
        // margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        width: 338,
        height: 100,
        child: Stack(children: [
          Positioned(
            top: 10,
            left: 11,
            child: Container(
              constraints: BoxConstraints.expand(width: 35, height: 17),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50), right: Radius.circular(50))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 12,
                    ),
                    Text(
                      rating,
                      style: TextStyle(fontSize: 11),
                    )
                  ]),
            ),
          ),
        ]),
      ),
      Container(
          height: 68,
          width: 338,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      price,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.green),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Container(
                  width: 1,
                  height: 200,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
                const Icon(Icons.flight_takeoff),
                const SizedBox(width: 5),
                Text(
                  calorie,
                  style: GoogleFonts.lato(color: Colors.grey, fontSize: 15),
                ),
                const SizedBox(width: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite_border_outlined, color: Colors.grey),
                    SizedBox(height: 1),
                    GestureDetector(
                      onTap: () {
                        Get.to(AddPizza(img: image));
                      },
                      child: Icon(
                        Icons.add_circle_outline,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
      SizedBox(
        height: 10,
      )
    ],
  );
}
