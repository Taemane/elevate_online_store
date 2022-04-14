import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:elevate_online_store/themes/colors.dart';

class SaleItemCard extends StatelessWidget {
  // String imageUrl;
  // String itemName;
  // String itemDesc;
  // String itemPrice;
  // final VoidCallback cartClicked;
  // final VoidCallback notficationClicked;

  const SaleItemCard({
    Key? key,
    //   required this.imageUrl,
    //   required this.itemName,
    //   required this.itemDesc,
    //   required this.itemPrice,
    //   required this.cartClicked,
    //   required this.notficationClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 160,
                  width: 160,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/CEREBOS_SALT_1KG.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    child: FaIcon(
                      FontAwesomeIcons.heart,
                      color: Theme.of(context).colorScheme.primary,
                      size: 14,
                    ),
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: secondaryColor1,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  top: 0,
                  right: 0,
                ),
              ],
            ),
            Text(
              'Product Name',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Product Description',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: 12,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: 12,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidStar,
                    size: 12,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  FaIcon(
                    FontAwesomeIcons.starHalf,
                    size: 12,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 170,
              child: Row(
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
                          child: CircleAvatar(
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            radius: 14,
                            child: FaIcon(
                              FontAwesomeIcons.solidBell,
                              size: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            radius: 14,
                            child: FaIcon(
                              FontAwesomeIcons.bagShopping,
                              size: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
