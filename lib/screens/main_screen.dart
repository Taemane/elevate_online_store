import 'package:elevate_online_store/screens/cart.dart';
import 'package:elevate_online_store/screens/home.dart';
import 'package:elevate_online_store/screens/liked_items.dart';
import 'package:elevate_online_store/screens/notifications.dart';
import 'package:elevate_online_store/screens/user_profile.dart';
import 'package:elevate_online_store/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  final screens = [
    const Home(),
    const LikedItems(),
    const Cart(),
    const Notifications(),
    const UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar:
          CustomBottomNavBar(index: index, onChangedTab: onChangedTab),
    );
  }

  void onChangedTab(int value) {
    setState(() {
      index = value;
    });
  }
}
