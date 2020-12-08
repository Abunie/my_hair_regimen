import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../app_theme.dart';
class CalendarView extends StatefulWidget {
  @override
  _CalendarViewState createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView>{
  CalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      initialCalendarFormat: CalendarFormat.month,
      calendarController: _calendarController,
      calendarStyle: CalendarStyle(
        todayColor: AppTheme.themeColor,
        selectedColor: AppTheme.grey,
        todayStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
      ),
      headerStyle: HeaderStyle(
        centerHeaderTitle: true,
        formatButtonDecoration: BoxDecoration(
          color: AppTheme.themeColor,
          borderRadius: BorderRadius.circular(20.0)
        ),
        formatButtonTextStyle: TextStyle(
        color: Colors.white
      ),
        formatButtonShowsNext: false,
      ),
      onDaySelected:(date, events) {
        print(date.toIso8601String());
      },
//      builders: CalendarBuilders(
//        selectedDayBuilder:(context, date, events) =>
//            Container(
//              margin: const EdgeInsets.all(4.0),
//              alignment: Alignment.center,
//              decoration: BoxDecoration(
//                color: AppTheme.themeColor,
//                shape: BoxShape.circle
//              ),
//              child: Text(date.day.toString(), style: TextStyle(color: Colors.white),)
//            )
//      ),


    );
  }
}