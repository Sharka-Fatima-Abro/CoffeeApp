import 'package:coffeapp/comopnts/coffe_tile.dart';
import 'package:coffeapp/models/coffe.dart';
import 'package:coffeapp/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class shoppage extends StatefulWidget {
  const shoppage({super.key});

  @override
  State<shoppage> createState() => _shoppageState();
}

class _shoppageState extends State<shoppage> {
  void addToCart(Coffe coffe) {
    Provider.of<Coffeshop>(context, listen: false).addItemToCart(coffe);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('successfully added to cart'),
      ),
    );
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
                'how would you like your coffe',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeshop.length,
                  itemBuilder: (context, index) {
                    Coffe eachcoffe = value.coffeshop[index];

                    return CoffeTile(
                      coffe: eachcoffe,
                      icon: const Icon(Icons.add),
                      onPressed: () => addToCart(eachcoffe),
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
