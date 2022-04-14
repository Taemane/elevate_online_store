import 'package:elevate_online_store/screens/cart.dart';
import 'package:elevate_online_store/screens/liked_items.dart';
import 'package:elevate_online_store/screens/notifications.dart';
import 'package:elevate_online_store/screens/user_profile.dart';
import 'package:elevate_online_store/themes/colors.dart';
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
      body: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    'assets/images/profile_pic.jpeg',
                    fit: BoxFit.cover,
                  ),
                  radius: 25,
                ),
                Column(
                  children: const [
                    Text('hello user!'),
                    Text('In the mood for shopping today?')
                  ],
                ),
              ],
            ),
            Row(
              children: [
                TextFieldInput(
                  textEditingController: _searchController,
                  hintText: 'Search...',
                  isPassword: false,
                  isEmail: false,
                  icon: FontAwesomeIcons.magnifyingGlass,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const FaIcon(FontAwesomeIcons.filter),
                ),
              ],
            ),
            const Text('Categories'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Chip(
                    label: Text('Beverages'),
                    backgroundColor: secondaryColor1,
                    elevation: 6,
                    padding: EdgeInsets.all(8),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
