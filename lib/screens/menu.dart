import 'package:flutter/material.dart';
import 'package:playbox/widgets/left_drawer.dart';
import 'package:playbox/widgets/product_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemHomepage> items = [
      ItemHomepage("View Product List", Icons.inventory_2_outlined,
          Theme.of(context).colorScheme.primary),
      ItemHomepage(
          "Add Product", Icons.add, Theme.of(context).colorScheme.secondary),
      ItemHomepage(
          "Logout", Icons.logout, Theme.of(context).colorScheme.tertiary),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Playbox',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
