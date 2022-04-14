import 'package:elevate_online_store/themes/colors.dart';
import 'package:flutter/material.dart';

import 'package:elevate_online_store/router.dart';

void main() {
  runApp(
    MyApp(
      router: AppRouter(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter router;

  const MyApp({
    Key? key,
    required this.router,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elevate Online Store',
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: secondaryColor1,
        primaryColor: primaryColor,
        buttonTheme: const ButtonThemeData(buttonColor: primaryColor),
        backgroundColor: secondaryColor,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: primaryColor,
              secondary: secondaryColor,
              tertiary: secondaryColor1,
            ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
          subtitle1: TextStyle(
              color: Colors.black,
              fontFamily: 'Nunito',
              fontSize: 14,
              fontWeight: FontWeight.w600),
          subtitle2: TextStyle(
              color: Colors.black,
              fontFamily: 'Nunito',
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        cardTheme: const CardTheme(
          elevation: 5,
          color: tertiaryColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              primaryColor,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            side: MaterialStateProperty.all(
              const BorderSide(
                color: primaryColor,
                width: 2,
              ),
            ),
          ),
        ),
      ),
      onGenerateRoute: router.generateRoute,
    );
  }
}
