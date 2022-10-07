import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_purchase_app/widgets/Pizza_type.dart';
import 'package:pizza_purchase_app/widgets/pizzaCard.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
              SingleChildScrollView(
                reverse: false,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: (PizzaType(pizzaType: "hi")),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: PizzaType(pizzaType: "hi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: PizzaType(pizzaType: "hi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: PizzaType(pizzaType: "hi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: PizzaType(pizzaType: "hi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: PizzaType(pizzaType: "hi"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                            image: "assets/pizza1.jpg",
                            price: "\$ 10.00",
                            calorie: "250 kcal",
                            type: "Pepperoni",
                            rating: "4.80",
                          ),
                          PizzaCard(
                            image: "assets/pizza2.jpg",
                            price: "\$ 20.00",
                            calorie: "250 kcal",
                            type: "Sausages",
                            rating: "4.00",
                          ),
                          PizzaCard(
                            image: "assets/pizza3.jpg",
                            price: "\$ 15.00",
                            calorie: "300 kcal",
                            type: "Beef",
                            rating: "4.50",
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
