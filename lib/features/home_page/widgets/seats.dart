import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seats extends StatefulWidget {
  const Seats({super.key});

  @override
  State<Seats> createState() => _SeatsState();
}

class _SeatsState extends State<Seats> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xfF2F3F6),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}
