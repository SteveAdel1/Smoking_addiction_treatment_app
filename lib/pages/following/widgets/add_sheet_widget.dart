import 'package:app/config/constants/constants.dart';
import 'package:flutter/material.dart';

class AddSheetWidget extends StatelessWidget {
  const AddSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Constants.mediaQuery.width,
        height: Constants.mediaQuery.height *0.30,
        decoration: BoxDecoration(
            borderRadius:const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, right: 10, left: 10, bottom: 10),
                    child: Text(
                      "2024/05/01",
                      textAlign: TextAlign.center,
                      style:Constants.theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  Color(0xFF0085FF),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: Constants.mediaQuery.width * 0.30,
                      height: Constants.mediaQuery.height * 0.1,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Container(
                              child: Icon(Icons.smoking_rooms_outlined,size: 35,),
                            ),
                            const Spacer(),
                            Text(
                              "Smoked a cigar",
                              style: Constants.theme.textTheme.bodyMedium
                                  ?.copyWith(
                                  fontSize: 13,
                                  color: const Color(0xFFFFFFFF)),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF85C3FF),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: Constants.mediaQuery.width * 0.30,
                      height: Constants.mediaQuery.height * 0.1,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Container(
                              child: Icon(Icons.gpp_good_outlined,size: 35,),
                            ),
                            const Spacer(),
                            Text(
                              "Success Day!",
                              style: Constants.theme.textTheme.bodyMedium
                                  ?.copyWith(
                                  fontSize: 13,
                                  color: const Color(0xFFFFFFFF)),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Constants.theme.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed:() {
                      },
                      child: Text(
                        "Cancel",
                        style: Constants.theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.white),
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
