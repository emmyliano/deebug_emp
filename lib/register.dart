import 'package:deebup_emp/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Column(
              children: [

                SizedBox(
                  height: 220,
                  child: Stack(
                    children: [
                      //First Circle
                      Positioned(
                        top: -150,
                        left: -160,
                        child: Container(
                          width: 570,
                          height: 350,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ),

                      // Second Circle
                      Positioned(
                        top: -180,
                        left: -100,
                        child: Container(
                          width: 400,
                          height: 300,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Register',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            // White spacing
                            const SizedBox(
                              height: 10,
                            ),

                            Padding(padding: const EdgeInsets.all(10),
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(10.0),
                                child: TextField(
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      )
                                    ),
                                    suffixIcon: const Icon(Icons.person),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    labelText: "Full name",
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // White spacing
                            const SizedBox(
                              height: 10,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(10.0),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      )
                                    ),
                                    suffixIcon: const Icon(Icons.email_outlined),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    labelText: "Email address",
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(
                              width: 10,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(10.0),
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      )
                                    ),
                                    suffixIcon: const Icon(Icons.phone),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    labelText: "Phone Number",
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // White spacing
                            const SizedBox(
                              height: 10,
                            ),


                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(10.0),
                                child: TextField(
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      )
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      icon: Icon(_obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    labelText: "Password",
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(10.0),
                                child: TextField(
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      )
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      icon: Icon(_obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    labelText: "Confirm Password",
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                    'Already have an account?'
                                ),

                                TextButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context, (MaterialPageRoute(builder: (context) => const SignIn())
                                    ));
                                  },
                                  child: Text(
                                      "Login",
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(
                              height: 10,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                width: double.infinity,
                                height: 55,
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                          )
                                      ),
                                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(
                                          255, 87, 92, 209))
                                  ),
                                  child: const Text(
                                    "Submit",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),

                            const Text(
                              "or",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: (){},
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(5),
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    ),
                                    child: const Text(
                                      "G",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),

                                  ElevatedButton(
                                      onPressed: (){},
                                      style: ButtonStyle(
                                        elevation: MaterialStateProperty.all(5),
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      ),
                                      child: const Icon(
                                        Icons.apple,
                                        color: Colors.black,
                                      )
                                  ),

                                  ElevatedButton(
                                      onPressed: (){},
                                      style: ButtonStyle(
                                        elevation: MaterialStateProperty.all(5),
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      ),
                                      child: const Icon(
                                        Icons.facebook,
                                        color: Colors.black,
                                      )
                                  ),
                                ],
                              ),
                            )
                          ]),
                    )
                ),
              ],
            )
          ],
        )
    );
  }
}
