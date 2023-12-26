import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../data/Cart.dart';

class CartCard extends StatefulWidget {
  const CartCard({
    Key? key,
    required this.cart,
    required this.onRemove,
  }) : super(key: key);

  final Cart cart;
  final VoidCallback onRemove;

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int selectedQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset(widget.cart.produk.images[0]),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.cart.produk.title,
              style: const TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                text: "\$${widget.cart.produk.price}",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
                children: const [
                  TextSpan(
                    text: " | Ready",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                // Tombol Hapus
                TextButton(
                  onPressed: widget.onRemove,
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: const Icon(Icons.delete),
                ),
                const SizedBox(width: 8),
                // DropdownButton
                DropdownButton<int>(
                  value: selectedQuantity,
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedQuantity = newValue!;
                    });
                  },
                  items: List.generate(10, (index) => index + 1)
                      .map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text('$value'),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
