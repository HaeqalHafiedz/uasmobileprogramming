import 'package:flutter/material.dart';

import '../../../komponen/product_card.dart';
import '../../../data/Produk.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.7,
            mainAxisSpacing: 20,
            crossAxisSpacing: 16,
          ),
          itemCount: demoProduk.length,
          itemBuilder: (context, index) =>
              ProductCard(produk: demoProduk[index]),
        ),
      ],
    );
  }
}
