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
        body: Column(
          children: [

            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  //First Circle
                  Positioned(
                    top: -70,
                    left: -70,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),

                  // Second Circle
                  Positioned(
                    top: -50,
                    left: -50,
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),

            Center(
                child: Padding(padding: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Register',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),


                        // White spacing
                        const SizedBox(
                          height: 10,
                        ),

                        Padding(padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.person),
                              labelStyle: const TextStyle(
                                color: Colors.black,
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

                        // White spacing
                        const SizedBox(
                          height: 10,
                        ),

                        Padding(padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.email_outlined),
                              labelStyle: const TextStyle(
                                color: Colors.black,
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

                        const SizedBox(
                          width: 10,
                        ),

                        Padding(padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.phone),
                              labelStyle: const TextStyle(
                                color: Colors.black,
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

                        // White spacing
                        const SizedBox(
                          height: 10,
                        ),


                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
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

                        const SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
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

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Already have an account?'
                            ),

                            const SizedBox(
                              width: 10,
                            ),

                            TextButton(
                              onPressed: (){
                                Navigator.push(
                                    context, (MaterialPageRoute(builder: (context) => const SignUp())
                                ));
                              },
                              child: const Text(
                                  "Log in"
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 20,
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
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
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

                        const SizedBox(
                          height: 10,
                        ),

                        const Text(
                          "or",
                          style: TextStyle(
                            fontSize: 32,
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
    );
  }
}
