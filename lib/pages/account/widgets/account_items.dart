import 'package:flutter/material.dart';

class AccountItems extends StatelessWidget {
  const AccountItems({required this.child , required this.text ,  super.key});

  final Widget child ;
   final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(children: [
        Container(
          padding: EdgeInsets.only(right: 15),
          child: child ,),
        Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)
      ],),
    );
  }
}
