import 'package:flutter/material.dart';
import 'package:house_of_icecream/component/cream.dart';
import 'package:house_of_icecream/component/cream_tile.dart';
import 'package:house_of_icecream/component/creamshop.dart';
import 'package:house_of_icecream/constants/color.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add coffee to cart
  void addToCart(Cream cream) {
    Provider.of<CreamShop>(context, listen: false).addItemToCart(cream);

    //let user know it add been successfully added
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text(
          "Successfully added to cart",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              backgroundColor: Colors.greenAccent),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CreamShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading message
              const Text(
                "What would you like to order?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 50),
              //list of coffee to buy
              Expanded(
                child: ListView.builder(
                  itemCount: value.creamShop.length,
                  itemBuilder: (context, index) {
                    //get individual coffee
                    Cream eachCream = value.creamShop[index];
                    //return the tile for this cream
                    return CreamTile(
                      cream: eachCream,
                      icon: const Icon(Icons.add),
                      onPressed: () => addToCart(eachCream),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
