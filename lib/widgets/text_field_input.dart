import 'package:elevate_online_store/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool isPassword;
  final bool isEmail;
  final IconData icon;
  final TextInputType textInputType;

  const TextFieldInput({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.isPassword,
    required this.isEmail,
    required this.icon,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));

    return SizedBox(
      height: 40,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: tertiaryColor,
          prefixIcon: Container(
            width: 15,
            child: Center(
              child: FaIcon(
                icon,
                size: 17,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          contentPadding: const EdgeInsets.all(0),
          focusColor: Theme.of(context).primaryColor,
        ),
        keyboardType: textInputType,
        obscureText: isPassword,
      ),
    );
  }
}
