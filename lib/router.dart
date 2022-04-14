import 'package:elevate_online_store/constants/strings.dart';
import 'package:elevate_online_store/screens/all_items.dart';
import 'package:elevate_online_store/screens/auth/sign_in.dart';
import 'package:elevate_online_store/screens/auth/sign_up.dart';
import 'package:elevate_online_store/screens/error_page.dart';
import 'package:elevate_online_store/screens/item_details.dart';
import 'package:elevate_online_store/screens/landing_page.dart';
import 'package:elevate_online_store/screens/main_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LANDING:
        return MaterialPageRoute(builder: (_) => const LandingPage());
      case SIGN_IN:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case SIGN_UP:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case TAB_SCREEN:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case ALL_ITEMS:
        return MaterialPageRoute(builder: (_) => const AllItems());
      case ITEM_DETAILS:
        return MaterialPageRoute(builder: (_) => const ItemDetails());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}
