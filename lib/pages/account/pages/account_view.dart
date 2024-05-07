import 'package:app/config/constants/constants.dart';
import 'package:app/pages/account/widgets/account_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../settings/view_model/settings_cubit.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
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
            AccountItems(
                child: Icon(Icons.speaker_notes_outlined,
                    color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                Colors.white : Colors.black),
                text: "Daily Rrminder"),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            AccountItems(
                child: Icon(Icons.slideshow,color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                Colors.white : Colors.black), text: "User Interface Settings"),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            AccountItems(
                child: Icon(Icons.refresh_outlined,color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                Colors.white : Colors.black), text: "Delete My Data"),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            AccountItems(child:
            Icon(Icons.logout_outlined,color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
            Colors.white : Colors.black), text: "Log Out"),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "Delete My Account",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.red),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
