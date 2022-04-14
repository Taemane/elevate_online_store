import 'package:elevate_online_store/themes/colors.dart';
import 'package:elevate_online_store/widgets/recommended_item_card.dart';
import 'package:elevate_online_store/widgets/sale_item_card.dart';
import 'package:elevate_online_store/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/profile_pic.jpeg"),
                      radius: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi user!',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Row(
                          children: [
                            Text(
                              'In the mood for shopping today?',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            FaIcon(
                              FontAwesomeIcons.basketShopping,
                              size: 16,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFieldInput(
                        textEditingController: _searchController,
                        hintText: 'Search...',
                        isPassword: false,
                        isEmail: false,
                        icon: FontAwesomeIcons.magnifyingGlass,
                        textInputType: TextInputType.text,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const FaIcon(
                        FontAwesomeIcons.sliders,
                        size: 16,
                        color: tertiaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories',
                        style: Theme.of(context).textTheme.bodyText1),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Show All',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Chip(
                          label: Text('Beverages',
                              style: Theme.of(context).textTheme.bodyText2),
                          backgroundColor: Colors.white,
                          elevation: 4,
                          padding: const EdgeInsets.all(8),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Chip(
                          label: Text('Breakfast & Cereals',
                              style: Theme.of(context).textTheme.bodyText2),
                          backgroundColor: Colors.white,
                          elevation: 4,
                          padding: const EdgeInsets.all(8),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Chip(
                          label: Text('Snacks',
                              style: Theme.of(context).textTheme.bodyText2),
                          backgroundColor: Colors.white,
                          elevation: 4,
                          padding: const EdgeInsets.all(8),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Chip(
                          label: Text('Fruits',
                              style: Theme.of(context).textTheme.bodyText2),
                          backgroundColor: Colors.white,
                          elevation: 4,
                          padding: const EdgeInsets.all(8),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Chip(
                          label: Text('Vegetables',
                              style: Theme.of(context).textTheme.bodyText2),
                          backgroundColor: Colors.white,
                          elevation: 4,
                          padding: const EdgeInsets.all(8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Most Popular',
                        style: Theme.of(context).textTheme.bodyText1),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Show All',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      SaleItemCard(),
                      SaleItemCard(),
                      SaleItemCard(),
                      SaleItemCard(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recommendation',
                        style: Theme.of(context).textTheme.bodyText1),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Show All',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      RecommendedItemCard(),
                      RecommendedItemCard(),
                      RecommendedItemCard(),
                      RecommendedItemCard(),
                      RecommendedItemCard(),
                      RecommendedItemCard(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
