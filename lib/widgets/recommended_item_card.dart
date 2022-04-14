import 'package:flutter/material.dart';

class RecommendedItemCard extends StatelessWidget {
  const RecommendedItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(),
          Column(
            children: const [
              Text('Product Item'),
              Text('Product Description'),
              Text('R9.99'),
            ],
          )
        ],
      ),
    );
  }
}
