
import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  final VoidCallback onPressed;
  final String? imgURL;
  const Arrow({super.key, required this.onPressed, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(40, 40),
      ),
      onPressed: onPressed,
      child: Image.asset(
        imgURL!,
        height: 40,
        width: 40,

      ),
    );
  }
}
