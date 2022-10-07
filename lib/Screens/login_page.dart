import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
//import 'package:get/get.dart';
//import 'package:simple_login/pages/homePage.dart';
//import 'package:simple_login/pages/signup.dart';
//import 'package:js/js.dart';

class LoginIn extends StatefulWidget {
  const LoginIn({Key? key}) : super(key: key);

  @override
  State<LoginIn> createState() => _LoginInState();
}

class _LoginInState extends State<LoginIn> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
        backgroundColor: Color.fromARGB(230, 214, 228, 28),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // if (!isKeyboard)
                // const Image(
                //     height: 200,
                //     width: 500,
                //     image: AssetImage('assets/pngwing.com (1).png')),
                SizedBox(
                  width: 300,
                  height: 200,
                  child: Lottie.network(
                      "https://assets3.lottiefiles.com/packages/lf20_o6nx4jow.json",
                      repeat: false),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email Address",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
                  child: TextFormField(
                    autocorrect: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                  child: TextFormField(
                    autocorrect: false,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),

                      //label: Text('Pasword'),
                      suffixIcon: IconButton(
                        icon: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                //Haven't converted the text into a link yet
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 50),
                GestureDetector(
                  child: Container(
                    width: 320,
                    height: 36,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        color: Color.fromARGB(230, 214, 228, 28),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                        child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                //LogIn

                const SizedBox(
                  height: 35,
                ),
                const Text("Don't have an account yet?"),
                GestureDetector(
                  child: const Text(
                    "Register",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  onTap: () {},
                ),
              ]),
        ));
  }
}
