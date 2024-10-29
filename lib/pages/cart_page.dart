import 'package:coffeapp/comopnts/coffe_tile.dart';
import 'package:coffeapp/models/coffe.dart';
import 'package:coffeapp/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  void removeFromCart(Coffe coffe) {
    Provider.of<Coffeshop>(context, listen: false).removeItemFromCart(coffe);
  }

  void payNow() {
    /*

      */
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coffeshop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Coffe eachcoffe = value.userCart[index];
                    return CoffeTile(
                      coffe: eachcoffe,
                      onPressed: () => removeFromCart(eachcoffe),
                      icon: const Icon(Icons.delete),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      'pay now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
