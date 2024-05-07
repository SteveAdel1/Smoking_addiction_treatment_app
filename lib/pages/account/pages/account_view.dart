import 'package:app/config/constants/constants.dart';
import 'package:app/config/widgets/setting_bottom.dart';
import 'package:app/pages/account/widgets/account_items.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../settings/view_model/settings_cubit.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    Time _time = Time(hour: 11, minute: 30, second: 20);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 15,
        title: Text("Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 130,
              // maxRadius: 100,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            Text(
              "Steve Adel",
              textAlign: TextAlign.center,
              style: Constants.theme.textTheme.bodyLarge,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Settings",
                  style: Constants.theme.textTheme.bodyMedium,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.speaker_notes_outlined,
                      color: BlocProvider.of<SettingsCubit>(context)
                              .state
                              .isDarkMode
                          ? Colors.white
                          : Colors.black),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        showPicker(
                          context: context,
                          value: _time,
                          sunrise: TimeOfDay(hour: 6, minute: 0), // optional
                          sunset: TimeOfDay(hour: 18, minute: 0), // optional
                          duskSpanInMinutes: 120, // optional
                          onChange: (p0) {},
                        ),
                      );
                    },
                    child: Text(
                      "Daily Reminder",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: BlocProvider.of<SettingsCubit>(context)
                                  .state
                                  .isDarkMode
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ],
              ),
            ),
           const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => SettingButton());
              },
              child: AccountItems(
                  child: Icon(Icons.slideshow,
                      color: BlocProvider.of<SettingsCubit>(context)
                              .state
                              .isDarkMode
                          ? Colors.white
                          : Colors.black),
                  text: "User Interface Settings"),
            ),
           const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            AccountItems(
                child: Icon(Icons.refresh_outlined,
                    color:
                        BlocProvider.of<SettingsCubit>(context).state.isDarkMode
                            ? Colors.white
                            : Colors.black),
                text: "Delete My Data"),
           const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            AccountItems(
                child: Icon(Icons.logout_outlined,
                    color:
                        BlocProvider.of<SettingsCubit>(context).state.isDarkMode
                            ? Colors.white
                            : Colors.black),
                text: "Log Out"),
           const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child:const Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                  ),
                const  Text(
                    "Delete My Account",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.red),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
