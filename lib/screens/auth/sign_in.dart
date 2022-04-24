import 'package:elevate_online_store/widgets/filled_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _visibility = true;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 120, 24, 0),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Hello Again!',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                "Welcome back, you've been missed!",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _buildEmailField(context, _emailController),
            const SizedBox(
              height: 15,
            ),
            _buildPasswordField(context, _passwordController, () {
              setState(() {
                _visibility = !_visibility;
              });
            }),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton(
              text: 'Sign In',
              width: double.infinity,
              color: Theme.of(context).colorScheme.primary,
              onClicked: () {},
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black38,
                    height: 2,
                    width: 60,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text('Or continue with'),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    color: Colors.black38,
                    height: 2,
                    width: 60,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 40,
                      color: Color.fromARGB(255, 0, 140, 255),
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

  Widget _buildEmailField(context, _controller) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );

    return TextField(
      autocorrect: false,
      enableSuggestions: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter email',
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        focusColor: Theme.of(context).primaryColor,
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  Widget _buildPasswordField(context, _controller, toggle) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );

    return TextField(
      autocorrect: false,
      enableSuggestions: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter password',
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        focusColor: Theme.of(context).primaryColor,
        filled: true,
        fillColor: Colors.white,
        suffixIcon: InkWell(
          onTap: toggle,
          child: SizedBox(
            width: 15,
            child: Center(
              child: FaIcon(
                _visibility
                    ? FontAwesomeIcons.solidEye
                    : FontAwesomeIcons.solidEyeSlash,
                size: 16,
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ),
      obscureText: _visibility,
    );
  }
}
