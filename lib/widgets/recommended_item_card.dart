import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecommendedItemCard extends StatelessWidget {
  const RecommendedItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/CERES_FRUIT_JUICE.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Item',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Product Description',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'R9.99',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                const SizedBox(
                  height: 2,
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
                        FontAwesomeIcons.solidStar,
                        size: 12,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidStar,
                        size: 12,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
