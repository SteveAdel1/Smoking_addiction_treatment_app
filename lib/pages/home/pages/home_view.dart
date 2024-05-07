import 'package:app/config/constants/constants.dart';
import 'package:app/config/widgets/setting_bottom.dart';
import 'package:app/pages/account/pages/account_view.dart';
import 'package:flutter/material.dart';

import '../../../config/widgets/custom_background_widget.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});

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
          title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Home"),
              ]),
        ),
        body:
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10, left: 5),
                  child: Text(
                    "Welcome..!",
                    textAlign: TextAlign.start,
                    style: Constants.theme.textTheme.bodyLarge,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF85C3FF),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      width: Constants.mediaQuery.width * 0.25,
                      height: Constants.mediaQuery.height * 0.2,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Text(
                              "17",
                              style: Constants.theme.textTheme.bodyLarge
                                  ?.copyWith(
                                      fontSize: 40, color: Color(0xFFFFFFFF)),
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                            Text(
                              "Days Without Smoking",
                              style: Constants.theme.textTheme.bodyMedium
                                  ?.copyWith(
                                      fontSize: 15,
                                      color: const Color(0xFFFFFFFF)),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF0085FF),
                          ),
                          width: Constants.mediaQuery.width * 0.68,
                          height: Constants.mediaQuery.height * 0.094,
                          child: Text(
                            "Smoking in the last 30 days : 0",
                            style: Constants.theme.textTheme.bodyMedium
                                ?.copyWith(
                                    fontSize: 16,
                                    color: const Color(0xFFFFFFFF)),
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF0085FF),
                          ),
                          width: Constants.mediaQuery.width * 0.68,
                          height: Constants.mediaQuery.height * 0.094,
                          child: Text("Success days from the beggining: 17",
                              style: Constants.theme.textTheme.bodyMedium
                                  ?.copyWith(
                                      fontSize: 14,
                                      color: const Color(0xFFEEEEEE))),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: Text(
                      "NoFap Content",
                      style: Constants.theme.textTheme.bodyLarge,
                    )),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Text(
                            "Comprehansive content about noFap",
                            style: Constants.theme.textTheme.bodyMedium
                                ?.copyWith(fontSize: 16, color: const Color(0xFF85C3FF)),
                          )),
                      Container(
                        //padding: EdgeInsets.symmetric(vertical: 5),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.add),
                            const Icon(Icons.add),
                            const Icon(Icons.add),
                            const Icon(Icons.add),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15, top: 20),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF85C3FF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Explore Content",
                              style: Constants.theme.textTheme.bodyMedium
                                  ?.copyWith(color: Color(0xFFFFFFFF)),
                            )),
                      )
                    ],
                  ),
                ),
              ]),
        )
    );
  }
}
