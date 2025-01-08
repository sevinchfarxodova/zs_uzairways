import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';

class Arrow extends StatelessWidget {
  final VoidCallback onPressed;
  final String? imgUrl;

  Arrow({super.key, required this.onPressed, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
backgroundColor:AppColors.white,
          minimumSize: Size(56, 36)
    ),
    onPressed:onPressed,
    child:Image.asset(imgUrl!,
    height: 56,width: 36,
    ));
}}
