import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(230, 214, 228, 28),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 30, 0),
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Lottie.network(
                  "https://assets9.lottiefiles.com/packages/lf20_2i1jrx6r.json",
                  repeat: false),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Buy from PizzaWil",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  "Choose your favorite pizza to be delivered to your door steps. You are rest assured of a tasty delicious pizza with PizzaWil",
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    textStyle: Theme.of(context).textTheme.headline6,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    width: 130,
                    height: 36,
                    child: Center(
                        child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(7)),
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 130,
                    height: 36,
                    child: Center(
                        child: Text(
                      'Sign Up',
                      style: TextStyle(
                          backgroundColor: Color.fromARGB(230, 214, 228, 28),
                          color: Colors.black,
                          fontSize: 15),
                    )),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(230, 214, 228, 28),
                        borderRadius: BorderRadius.circular(7)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
