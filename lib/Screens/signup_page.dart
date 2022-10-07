import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(230, 214, 228, 28),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 200,
              child: Lottie.network(
                  "https://assets3.lottiefiles.com/packages/lf20_o6nx4jow.json",
                  repeat: false),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 20.0),

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password_sharp),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password_sharp),
                  labelText: 'Confirm Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    color: Color.fromARGB(230, 214, 228, 28),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                    child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 85.0,
                  height: 1.0,
                  color: Colors.black26,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "or SignUP with",
                  style: const TextStyle(
                      fontSize: 15, fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 85.0,
                  height: 1.0,
                  color: Colors.black26,
                ),
              ],
            ),
            // const SizedBox(height: 10),
            // Row(
            //   //crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SignInButton(Buttons.Facebook, mini: true, onPressed: () {}),
            //     const SizedBox(width: 10),
            //     SignInButton(mini: true, Buttons.LinkedIn, onPressed: () {}),
            //     const SizedBox(width: 10),
            //     SignInButton(mini: true, Buttons.Twitter, onPressed: () {}),
            //     const SizedBox(width: 10),
            //     SignInButton(mini: true, Buttons.GitHub, onPressed: () {}),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
