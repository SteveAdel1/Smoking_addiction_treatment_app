import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF85C3FF),
      ),
      child: TableCalendar(
        firstDay: DateTime.utc(2024),
        lastDay: DateTime.utc(2026),
        focusedDay: DateTime.now(),
        weekNumbersVisible: false,
        calendarStyle: CalendarStyle(
            defaultDecoration: BoxDecoration(
            ),
            outsideDaysVisible: false,
            canMarkersOverflow: false,
            tablePadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10)
        ),
        headerStyle: HeaderStyle(
          //headerPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
            formatButtonShowsNext: false,
            formatButtonVisible: false,
            titleCentered: true,
            formatButtonDecoration: BoxDecoration(
              color: Colors.white,
            )
        ),
      ),
    );
  }
}
