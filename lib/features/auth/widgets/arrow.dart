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
          //minimumSize: Size(50, 36)
    ),
    onPressed:onPressed,
    child:Image.asset(imgUrl!,
      color: Colors.black,
    height: 56,width: 25,

    ));
}}
