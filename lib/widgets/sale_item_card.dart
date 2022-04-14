import 'package:elevate_online_store/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SaleItemCard extends StatelessWidget {
  const SaleItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset("name"),
              ),
              const Positioned(
                child: FaIcon(FontAwesomeIcons.heart),
                top: 5,
                left: 5,
              ),
            ],
          ),
          const Text('Product Name'),
          const Text('Product Description'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'R9.99',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: primaryColor),
              ),
              SizedBox(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        child: FaIcon(FontAwesomeIcons.bellConcierge),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        child: FaIcon(FontAwesomeIcons.bagShopping),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
