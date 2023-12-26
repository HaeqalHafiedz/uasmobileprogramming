import 'Produk.dart';

class Cart {
  final Produk produk;
  final int numOfItem;

  Cart({required this.produk, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(produk: demoProduk[0], numOfItem: 2),
  Cart(produk: demoProduk[1], numOfItem: 1),
  Cart(produk: demoProduk[2], numOfItem: 1),
];
