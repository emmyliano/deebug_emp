import 'package:deebup_emp/forgot_password.dart';
import 'package:deebup_emp/register.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = false; // this variable is used in the password TextField for visibility on/off

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
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // white spacing
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

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(10.0),
                              shadowColor: Colors.black,
                              child: TextField(
                                keyboardType: TextInputType.multiline,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                      context, (MaterialPageRoute(builder: (context) => const ForgotPassword())
                                  ));
                                },
                                child: Text(
                                    "Forgot Password?",
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
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                  "Don't have an account?"
                              ),

                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                      context, (MaterialPageRoute(builder: (context) => const SignUp())
                                  ));
                                },
                                child: Text(
                                    "Register",
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
