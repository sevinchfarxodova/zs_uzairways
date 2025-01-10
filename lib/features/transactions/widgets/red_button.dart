import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class RedButton extends StatelessWidget  {
  String? text;
  final VoidCallback onPressed;
  String? img;
  RedButton({super.key, required this.text, required this.onPressed, required this.img});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xfFCE9E9),
        padding: const EdgeInsets.symmetric(horizontal: 326, vertical: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text!,
            style: const TextStyle(
              color: Colors.red, // Text color
              fontSize: 16, // Font size
            ),
          ),
          const SizedBox(width: 8),
          Image.asset(img!,
            height: 18,
            width: 18,),
        ],
      ),
    );

  }
}
