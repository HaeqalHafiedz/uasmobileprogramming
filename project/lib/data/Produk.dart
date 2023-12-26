class Produk {
  final int id;
  final String title, description;
  final List<String> images;
  final double price;

  Produk({
    required this.id,
    required this.images,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Produks

List<Produk> demoProduk = [
  Produk(
    id: 1,
    images: [
      "assets/images/guyonwaton.jpg",
    ],
    title: "Konser Guyon Waton | Beli",
    price: 20.9,
    description: description,
  ),
  Produk(
    id: 2,
    images: [
      "assets/images/taylor.jpg",
    ],
    title: "Taylor Swift Conser",
    price: 90.5,
    description: description,
  ),
  Produk(
    id: 3,
    images: [
      "assets/images/ndx.jpg",
    ],
    title: "NDX AKA KONSER",
    price: 10.54,
    description: description,
  ),
  Produk(
    id: 4,
    images: [
      "assets/images/yelloclaw.jpg",
    ],
    title: "Yello Claw Conser",
    price: 59.10,
    description: description,
  ),
];

const String description = "Concert Music From The Stars …";
