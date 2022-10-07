import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/framework.dart';

Color _selectedBox = Colors.redAccent;

class PizzaType extends StatefulWidget {
  final String pizzaType;

  PizzaType({Key? key, required this.pizzaType}) : super(key: key);

  @override
  State<PizzaType> createState() => _PizzaTypeState();
}

class _PizzaTypeState extends State<PizzaType> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Ink(
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 70,
              height: 25,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                widget.pizzaType,
                style: GoogleFonts.lato(color: Colors.grey),
              )),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
