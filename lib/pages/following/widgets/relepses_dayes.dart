import 'package:flutter/material.dart';

import '../../../config/constants/constants.dart';

class RelapsesDays extends StatelessWidget {
  const RelapsesDays({required this.dayName ,required this.dayCount, super.key});
  final String  dayName;
  final String  dayCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(110),
            color: Color(0xFF0085FF)
          ),
          child: Text(dayName,style: Constants.theme.textTheme.bodyMedium
              ?.copyWith(fontSize: 12)),),
        Spacer(),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(110),
              color: Color(0xFF0085FF)
          ),
          child: Text(dayCount,style: Constants.theme.textTheme.bodyMedium
              ?.copyWith(fontSize: 12)),),
      ],),
    );
  }
}
