import 'package:app/config/constants/constants.dart';
import 'package:app/config/widgets/setting_bottom.dart';
import 'package:app/pages/following/widgets/add_sheet_widget.dart';
import 'package:app/pages/following/widgets/calender_widget.dart';
import 'package:app/pages/following/widgets/current_streak_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/relapses_by_day_of_day.dart';

class FollowingView extends StatefulWidget {
  const FollowingView({super.key});

  @override
  State<FollowingView> createState() => _FollowingViewState();
}

class _FollowingViewState extends State<FollowingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 15,
        leading: InkWell(onTap: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => SettingButton(),);
        },
          child: Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Icon(Icons.settings)),
        ),
        title:
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Follow Your Reboot"),
        ]),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: Constants.mediaQuery.width,
                decoration: BoxDecoration(
                    color: Color(0xFF0085FF),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(
                      Icons.notes_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: Text(
                          "Dairies",
                          style: Constants.theme.textTheme.bodyMedium,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 5),
                child: Text(
                  "Current Streak",
                  style: Constants.theme.textTheme.bodyMedium,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CurrentStreakWidget(
                    color: Color(0xFF85C3FF),
                    text: "17",
                    title: "Days Without Smoking",
                  ),
                  CurrentStreakWidget(
                    color: Color(0xFF85C3FF),
                    text: "17",
                    title: "Days Without Smoking",
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => AddSheetWidget(),
                  );
                },
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    width: Constants.mediaQuery.width,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            //offset: Offset(0, 0), // Shadow position
                          ),
                        ],
                        color: Color(0xFF0085FF),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Daily Follow-up",
                      style: Constants.theme.textTheme.bodyLarge,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 5),
                child: Text(
                  "Reboot Calender",
                  style: Constants.theme.textTheme.bodyMedium,
                ),
              ),
              CalenderWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 5),
                child: Text(
                  "Relapses By Day-of-Day",
                  style: Constants.theme.textTheme.bodyMedium,
                ),
              ),
              RelapsesByDayOfDay()
            ],
          ),
        ),
      ),
    );
  }
}
