import 'package:app/config/constants/constants.dart';
import 'package:app/config/widgets/setting_bottom.dart';
import 'package:app/pages/following/widgets/add_sheet_widget.dart';
import 'package:app/pages/following/widgets/calender_widget.dart';
import 'package:app/pages/following/widgets/current_streak_widget.dart';
import 'package:app/pages/settings/view_model/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        leadingWidth: 30, // Adjust the width of the leading icon
        centerTitle: false,
        leading:GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => SettingButton(),
              );
            },
            child: Icon(
              Icons.settings,  // add custom icons also
            )
        ),

        title:
             Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Text("Follow Your Reboot",),
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
                        color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                        Colors.white : Colors.black
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: Text(
                          "Dairies",
                          style: Constants.theme.textTheme.bodyMedium ?.copyWith(color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                          Colors.white : Colors.black ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 5),
                child: Text(
                  "Current Streak",
                  style: Constants.theme.textTheme.bodyMedium ?.copyWith(color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                  Colors.white : Colors.black ),
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
                        boxShadow:const[
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
                      style: Constants.theme.textTheme.bodyLarge?.copyWith(color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                      Colors.white : Colors.black ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 5),
                child: Text(
                  "Reboot Calender",
                  style: Constants.theme.textTheme.bodyMedium?.copyWith(color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                  Colors.white : Colors.black ),
                ),
              ),
              CalenderWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 5),
                child: Text(
                  "Relapses By Day-of-Day",
                  style: Constants.theme.textTheme.bodyMedium?.copyWith(
                      color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                  Colors.white : Colors.black ),
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
