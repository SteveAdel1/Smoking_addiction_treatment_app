import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../settings/view_model/settings_cubit.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xFF85C3FF),
      ),
      child: TableCalendar(
        headerStyle: HeaderStyle(
          leftChevronIcon: Icon(Icons.arrow_back,color: BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
          Colors.white : Colors.black,),
          rightChevronIcon: Icon(Icons.arrow_forward,color: BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
          Colors.white : Colors.black,), // Custom right chevron icon
          titleCentered: true,
          formatButtonVisible: false,
        ),
        weekNumbersVisible: false,
        weekendDays: [],
        daysOfWeekVisible: true,
        daysOfWeekHeight: 25,
        daysOfWeekStyle: DaysOfWeekStyle(
        ),
        headerVisible: true,
        holidayPredicate: (day) => false,
        calendarStyle: CalendarStyle(
          canMarkersOverflow: false,
          weekendDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),

        ),
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        calendarBuilders: CalendarBuilders(
          holidayBuilder: (context, day, _) {
            // Customize the appearance of the days bar
            return Container(
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
              //borderRadius: BorderRadius.circular(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue, // Custom background color
              ),
              child: Center(
                child: Text(
                  '${day.day}',
                  style: TextStyle(
                    color: Colors.white, // Custom text color
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
