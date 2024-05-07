import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/constants/constants.dart';
import '../../settings/view_model/settings_cubit.dart';

class RelapsesDays extends StatelessWidget {
  const RelapsesDays({required this.dayName ,required this.dayCount, super.key});
  final String  dayName;
  final String  dayCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [

        CircleAvatar(
          backgroundColor: Color(0xFF0085FF),
          child: Text(dayName,style: Constants.theme.textTheme.bodyMedium
              ?.copyWith(fontSize: 12,color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
          Colors.white : Colors.black )),),
        Spacer(),
        CircleAvatar(
          backgroundColor: Color(0xFF0085FF),
          child: Text(dayCount,style: Constants.theme.textTheme.bodyMedium
          ?.copyWith(fontSize: 12,color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
       Colors.white : Colors.black )),)
        // Container(
        //   padding: EdgeInsets.all(15),
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(110),
        //       color: Color(0xFF0085FF)
        //   ),
        //   child: Text(dayCount,style: Constants.theme.textTheme.bodyMedium
        //       ?.copyWith(fontSize: 12,color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
        //   Colors.white : Colors.black )),),
      ],),
    );
  }
}
