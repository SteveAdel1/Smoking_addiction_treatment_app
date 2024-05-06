import 'package:app/config/constants/constants.dart';
import 'package:app/pages/following/widgets/relepses_dayes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RelapsesByDayOfDay extends StatelessWidget {
  const RelapsesByDayOfDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF85C3FF),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "Relapses Count:",
                      style: Constants.theme.textTheme.bodyMedium
                          ?.copyWith(fontSize: 15),
                    )),
                Spacer(),
                Container(
                    padding: EdgeInsets.only(top: 10, right: 10),
                    child: Text("0",
                        style: Constants.theme.textTheme.bodyMedium
                            ?.copyWith(fontSize: 15)))
              ],
            ),
            Divider(
              thickness: 1,
              color: Color(0xFF23374D),
              endIndent: 10,
              indent: 10,
            ),
            RelapsesDays(dayName: "sun",dayCount: "0",),
            RelapsesDays(dayName: "sun",dayCount: "0",),
            RelapsesDays(dayName: "sun",dayCount: "0",),
            RelapsesDays(dayName: "sun",dayCount: "0",),
            RelapsesDays(dayName: "sun",dayCount: "0",),
            RelapsesDays(dayName: "sun",dayCount: "0",),
            RelapsesDays(dayName: "sun",dayCount: "0",),
          ],
        ),
      ),
    );
  }
}
