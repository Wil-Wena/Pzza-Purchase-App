import 'package:get/get.dart';
import 'package:pizza_purchase_app/models/pizza_requirements.dart';

class PizzaController extends GetxController {
  var pizzas = <PizzaModel>[].obs;

  void OnInit() {
    super.onInit();
    fetchPizzas();
  }

  void fetchPizzas() async {
    await Future.delayed(Duration(seconds: 1));
    var pizzaResult = [
      PizzaModel("assets/pizza1.jpg", 4.5, "Pepperoni", 20.70, 143),
      PizzaModel("assets/pizza2.jpg", 5.0, "Chicken", 80.70, 453),
      PizzaModel("assets/pizza3.jpg", 3.5, "Beef", 50.70, 503),
      PizzaModel("assets/pizza1.jpg", 1.5, "Stuufed", 10.70, 23),
      PizzaModel("assets/pizza2.jpg", 4.4, "Chicken", 75.00, 300),
    ];
    pizzas.value = pizzaResult;
  }
}
