import 'package:flutter/cupertino.dart';

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/'),
              SizedBox(width: 4,),
              Text('Southwest Airlines',style: TextStyle(
                fontSize: 14,

              ),)
            ],
          )
        ],
      ),
    );
  }
}
