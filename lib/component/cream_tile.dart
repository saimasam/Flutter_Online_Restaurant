import 'package:flutter/material.dart';
import 'package:house_of_icecream/component/cream.dart';

class CreamTile extends StatelessWidget {
  final Cream cream;
  void Function()? onPressed;
  final Widget icon;
  CreamTile({
    super.key,
    required this.cream,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(cream.name),
        subtitle: Text(cream.price),
        leading: Image.asset(cream.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
