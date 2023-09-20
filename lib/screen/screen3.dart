import 'package:flutter/material.dart';
import 'package:house_of_icecream/constants/color.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColor.white,
      appBar: AppBar(
        backgroundColor: MColor.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(
            child: Text(
              "START YOUR ORDER",
              style: TextStyle(
                color: MColor.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 40, right: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "HOW WOULD YOU LIKE TO RECEIVE YOUR ORDER?",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Screen1');
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: MColor.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 0,
                            color: Colors.white,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Take Away',
                          style: TextStyle(
                            color: MColor.black,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Screen1');
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: MColor.pink,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 0,
                            color: Colors.white,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Dine In',
                          style: TextStyle(
                            color: MColor.black,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 240),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Screen1');
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: MColor.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 0,
                            color: Colors.white,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Delivery',
                          style: TextStyle(
                            color: MColor.black,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
