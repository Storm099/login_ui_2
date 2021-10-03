import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.5),
            ]
          )
        ),
        child: Column(
          children: [
            const SizedBox(height: 80,),
            //#welcome
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 40),),
                  Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ),
            const SizedBox(height: 70,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  color: Colors.white
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children:  [

                      const SizedBox(height: 80,),
                      //#fullname #email #phone #password

                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: const BoxDecoration(
                          //border: Border(bottom: BorderSide(color: Colors.teal)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 20,
                                offset: Offset(0,10),
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding : const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.white
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: "Fullname",
                                    hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding : const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.white
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding : const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.white
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: "Phone",
                                    hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding : const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.white
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                                    border: InputBorder.none
                                ),
                                obscureText: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40,),
                      //#signup button
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 80),
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black54,
                        ),
                        child: Center(
                          child: TextButton(
                            child: Text("Sign Up",style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            onPressed: (){

                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text("Sign Up with SNS",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 30,),
                      //#facebook #google #apple
                      Container(
                        margin: const EdgeInsets.only(left: 30,right: 30,bottom: 50),
                        child: Row(
                          children: [
                            Expanded(child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: const Center(
                                child: Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            )),
                            const SizedBox(width: 15,),
                            Expanded(child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red,
                              ),
                              child: const Center(
                                child: Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            )),
                            const SizedBox(width: 15,),
                            Expanded(child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black,
                              ),
                              child: const Center(
                                child: Text("Apple",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            )),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
