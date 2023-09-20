import 'package:flutter/material.dart';
import 'package:house_of_icecream/button.dart';
import 'package:house_of_icecream/constants/color.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColor.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            SizedBox(height: 25),
            //icon
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Image.asset("assets/logo4.png"),
            ),
            SizedBox(height: 25),
            Button(text: "Order Now")
          ],
        ),
      ),
    );
  }
}
