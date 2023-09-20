import 'package:flutter/material.dart';
import 'package:house_of_icecream/constants/color.dart';
import 'package:house_of_icecream/screen/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'HomePage');
          },
          backgroundColor: MColor.lightorange,
          child: Icon(
            Icons.shopping_bag,
            color: MColor.white,
          ),
        ),
        backgroundColor: MColor.white,
        appBar: AppBar(
          title: Text(
            "Pink Sugar",
            style: TextStyle(fontSize: 25, color: MColor.pink),
          ),
          centerTitle: true,
          backgroundColor: MColor.white,
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 10),
              decoration: BoxDecoration(
                color: MColor.pink,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: MColor.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here",
                        hintStyle: TextStyle(
                          color: MColor.black.withOpacity(0.5),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Screen2(),
          ],
        ),
        //bottomnavigationbar
      ),
    );
  }
}
