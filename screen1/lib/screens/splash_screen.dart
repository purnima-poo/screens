import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(children: [
              Image.asset("assets/plant1.png"),
              RichText(
                  text: const TextSpan(
                      text: "Plant a tree & \ngreen the ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                      children: [
                    TextSpan(
                        text: "earth", style: TextStyle(color: Colors.teal))
                  ])),
              const SizedBox(
                height: 15,
              ),
              Text(
                  "We'll keep you updated on plants to-do\n list to make sure you are on track")
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Container(
            height: 50,
            child:
                ElevatedButton(onPressed: () {}, child: Text("Get Started"))),
      ),
    );
  }
}
