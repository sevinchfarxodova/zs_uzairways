import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
class LongButton extends StatelessWidget {
  String? text;
  final VoidCallback onPressed;
  String? img;
  LongButton({super.key, required this.text, required this.onPressed, required this.img});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 326, vertical: 36),
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
              color: Colors.white, // Text color
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