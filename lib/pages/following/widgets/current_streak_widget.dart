import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../config/constants/constants.dart';
import '../../settings/view_model/settings_cubit.dart';

class CurrentStreakWidget extends StatelessWidget {
  const CurrentStreakWidget({ required this.title ,
    required this.color ,
    required this.text ,
    super.key});

  final Color color;
  final String text;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 10),
      width: Constants.mediaQuery.width * 0.40,
      height: Constants.mediaQuery.height * 0.2,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Text(
              text ,
              style: Constants.theme.textTheme.bodyLarge
                  ?.copyWith( color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
              Colors.white : Colors.black,
                  fontSize: 40,),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Text(
              title,
              style: Constants.theme.textTheme.bodyMedium
                  ?.copyWith(
                  color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
                  Colors.white : Colors.black,
                  fontSize: 15,),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
