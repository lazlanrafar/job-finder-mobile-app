import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final String icon;
  final Color bgColor;
  final Function() onPressed;

  const ButtonIcon({
    super.key,
    required this.icon,
    required this.onPressed,
    this.bgColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Image.asset(
          icon,
          width: 24,
          height: 24,
        ),
        tooltip: 'Menu',
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ));
  }
}
