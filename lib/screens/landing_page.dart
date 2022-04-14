import 'package:elevate_online_store/constants/strings.dart';
import 'package:elevate_online_store/themes/colors.dart';
import 'package:elevate_online_store/widgets/filled_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Flexible(
              child: Container(),
              flex: 1,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Lottie.asset('assets/lottie/banner.json'),
            ),
            Text(
              'Welcome to',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).primaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'elev',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(fontSize: 35),
                ),
                const FaIcon(
                  FontAwesomeIcons.bagShopping,
                  size: 19,
                  color: primaryColor,
                ),
                Text(
                  'te',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(fontSize: 35),
                ),
              ],
            ),
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
                Navigator.of(context).pushNamed(TAB_SCREEN);
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
