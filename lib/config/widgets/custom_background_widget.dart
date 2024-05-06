import 'package:flutter/material.dart';

class CustomBackgroundWidget extends StatelessWidget {
  const CustomBackgroundWidget({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: child,
    );
  }
}
