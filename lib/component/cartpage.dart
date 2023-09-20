import 'package:flutter/material.dart';
import 'package:house_of_icecream/component/cream.dart';
import 'package:house_of_icecream/component/cream_tile.dart';
import 'package:house_of_icecream/component/creamshop.dart';
import 'package:house_of_icecream/constants/color.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removeFromCart(Cream cream) {
    Provider.of<CreamShop>(context, listen: false).removeItemFromCart(cream);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CreamShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading
              Text(
                "Your Cart",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              //SizedBox(height: 50),
              //list of cart items
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    //get individual cart item
                    Cream eachCream = value.userCart[index];

                    //return coffee tile
                    return CreamTile(
                      cream: eachCream,
                      onPressed: () => removeFromCart(eachCream),
                      icon: Icon(Icons.delete),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "PaymentPage");
                        },
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: MColor.lightorange,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                color: Colors.white,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Pay Now',
                              style: TextStyle(
                                color: MColor.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
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
        ),
      ),
    );
  }
}
