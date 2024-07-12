import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Column(
              children: [

                SizedBox(
                  height: 300,
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

                const SizedBox(
                  height: 20,
                ),

                Center(
                    child: Padding(padding: const EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Reset Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            // white spacing
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
          ],
        )
    );
  }
}

