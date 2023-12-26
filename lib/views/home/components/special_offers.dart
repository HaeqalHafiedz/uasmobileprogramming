import 'package:flutter/material.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.image,
    required this.price,
  }) : super(key: key);

  final String image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        child: SizedBox(
          width: 300,
          height: 300,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black54,
                        Colors.black38,
                        Colors.black26,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/dj1.jpg",
                price: 18,
              ),
              SpecialOfferCard(
                image: "assets/images/dj2.png",
                price: 24,
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'Music Album', // Ganti dengan judul yang diinginkan
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Times New Roman'),
              ),
              SizedBox(height: 8),
              Text(
                'Rock music is a genre of popular music. It developed during and after the 1960s in the United Kingdom.', // Ganti dengan deskripsi yang diinginkan
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'Times New Roman'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
