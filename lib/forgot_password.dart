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
                height: 250,
                child: Stack(
                  children: [
                    //First Circle
                    Positioned(
                      top: -70,
                      left: -70,
                      child: Container(
                        width: 250,
                        height: 250,
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
                        width: 170,
                        height: 170,
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
                      padding: const EdgeInsets.all(50),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reset Password',
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
                                elevation: 5.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10.0),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    suffixIcon: const Icon(Icons.email_outlined),
                                    labelStyle: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    labelText: "Email address",
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      )
                                    ),
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

