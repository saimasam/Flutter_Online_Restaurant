import 'package:flutter/material.dart';
import 'package:house_of_icecream/constants/color.dart';

class Button extends StatelessWidget {
  final String text;
  Button({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'Screen3');
              },
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                  color: MColor.pink,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'Order Now',
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
    );
  }
}
//decoration: BoxDecoration(
//    color: MColor.pink,
//    border: Border.all(),
//    borderRadius: BorderRadius.circular(40)),
//padding: EdgeInsets.all(20),
//child: Row(
//  mainAxisAlignment: MainAxisAlignment.center,
//  children: [
//    TextButton(
//      onPressed: () {},
//      child: Text(
//        text,
//        style: TextStyle(
//          color: MColor.black,
//          fontSize: 25,
//          fontWeight: FontWeight.w500,
//        ),
//      ),
//    ),
//  ],
//),