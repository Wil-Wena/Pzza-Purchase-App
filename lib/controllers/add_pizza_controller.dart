import 'package:get/get.dart';
import 'package:pizza_purchase_app/models/pizza_requirements.dart';

class PizzaAddController extends GetxController {
  var added_pizza = <PizzaModel>[].obs;
  addToPizza(PizzaModel pizzaModel) {
    added_pizza.add(pizzaModel);
  }
}
