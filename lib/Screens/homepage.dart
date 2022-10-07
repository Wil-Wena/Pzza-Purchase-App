import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_purchase_app/widgets/Pizza_type.dart';
import 'package:pizza_purchase_app/widgets/pizzaCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.list,
                      color: Colors.black,
                    ),
                    Icon(Icons.shopping_cart_checkout_outlined,
                        color: Colors.grey),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: Row(
                  children: [
                    PizzaType(pizzaType: "hi"),
                    PizzaType(pizzaType: "hi"),
                    PizzaType(pizzaType: "hi"),
                    PizzaType(pizzaType: "hi"),
                    PizzaType(pizzaType: "hi"),
                    PizzaType(pizzaType: "hi"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: Text(
                  "Delicious food for you",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      //  return Container();
                      return Column(
                        children: [
                          PizzaCard(
                            "assets/pizza1.jpg",
                            "\$ 10.00",
                            "250 kcal",
                            "Pepperoni",
                            "4.80",
                          ),
                          PizzaCard(
                            "assets/pizza2.jpg",
                            "\$ 10.00",
                            "250 kcal",
                            "Pepperoni",
                            "4.80",
                          ),
                          PizzaCard(
                            "assets/pizza3.jpg",
                            "\$ 10.00",
                            "250 kcal",
                            "Pepperoni",
                            "4.80",
                          ),
                        ],
                      );
                    },
                  )
                  // PizzaCard("assets/pizza1.jpg", "\$ 10.00", "250 kcal"),
                  // PizzaCard("assets/pizza2.jpg", "\$ 75.00", "300 kcal"),
                  // PizzaCard("assets/pizza3.jpg", "\$ 0.50", "100 kcal"),
                  // PizzaCard("assets/pizza1.jpg", "\$ 10.00", "250 kcal"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
