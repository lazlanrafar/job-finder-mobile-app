import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final String icon;
  final Function() onPressed;

  const ButtonIcon({
    super.key,
    required this.icon,
    required this.onPressed,
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
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ));
  }
}
