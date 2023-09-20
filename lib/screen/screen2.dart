import 'package:flutter/material.dart';
import 'package:house_of_icecream/constants/color.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        width: 300,
        //height: 0,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: MColor.white,
          boxShadow: [
            BoxShadow(
              color: MColor.lightblue.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              color: MColor.white,
              alignment: Alignment.center,
              child: Text(
                "MENU",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: MColor.pink),
              ),
            ),
            SizedBox(height: 15),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 1,
              childAspectRatio: 0.9,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 7; i++)
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: MColor.pink,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: MColor.lightblue.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "HomePage");
                          },
                          child: Image.asset(
                            "assets/$i.png",
                            fit: BoxFit.contain,
                            height: 300,
                            width: 200,
                          ),
                        ),
                        SizedBox(height: 3),
                        Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DESSERT",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: MColor.black),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
