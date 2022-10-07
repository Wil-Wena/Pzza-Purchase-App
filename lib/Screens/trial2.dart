import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/pizza_controller.dart';

class TRial extends StatelessWidget {
  TRial({Key? key}) : super(key: key);
  final pizzaController = Get.put(PizzaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<PizzaController>(builder: (controller) {
                return ListView.builder(
                  itemCount: controller.pizzas.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          // margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.grey),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      controller.pizzas[index].image),
                                  fit: BoxFit.cover)),
                          width: 338,
                          height: 100,
                          child: Stack(children: [
                            Positioned(
                              top: 10,
                              left: 11,
                              child: Container(
                                constraints: const BoxConstraints.expand(
                                    width: 35, height: 17),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(50),
                                        right: Radius.circular(50))),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Text(
                                        '${controller.pizzas[index].rating}',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${controller.pizzas[index].type}',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '${controller.pizzas[index].price}',
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
                                    '${controller.pizzas[index].calorie}',
                                    style: GoogleFonts.lato(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  const SizedBox(width: 100),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Icon(Icons.favorite_border_outlined,
                                          color: Colors.grey),
                                      SizedBox(height: 1),
                                      Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.grey,
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
                  },
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
