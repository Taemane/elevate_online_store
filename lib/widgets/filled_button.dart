import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final String text;
  final double width;
  final Color color;
  final Color? textColor;
  final VoidCallback onClicked;

  const FilledButton({
    Key? key,
    required this.text,
    required this.width,
    required this.color,
    this.textColor,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Card(
        elevation: 6,
        child: Container(
          width: width,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
