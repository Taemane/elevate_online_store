import 'package:elevate_online_store/constants/strings.dart';
import 'package:elevate_online_store/themes/colors.dart';
import 'package:elevate_online_store/widgets/filled_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor1,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Flexible(
              child: Container(),
              flex: 1,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: double.infinity,
              child: Expanded(
                child: Lottie.asset('assets/lottie/banner.json'),
              ),
            ),
            Text(
              'Hey! Welcome',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).primaryColor),
            ),
            Text('Ele Online Store',
                style: Theme.of(context).textTheme.subtitle1),
            const Text('elevated shopping with ease!'),
            Flexible(
              child: Container(),
              flex: 1,
            ),
            FilledButton(
              text: 'Get Started',
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              onClicked: () {
                Navigator.of(context).pushNamed(HOME);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            FilledButton(
              text: 'I already have an account',
              width: double.infinity,
              color: Colors.white,
              onClicked: () {
                Navigator.of(context).pushNamed(SIGN_UP);
              },
            ),
          ],
        ),
      ),
    );
  }
}
