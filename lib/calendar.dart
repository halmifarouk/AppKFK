import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';


class DemoApp extends StatefulWidget {
  const DemoApp({Key key}) : super(key: key);

  

  @override
  DemoAppState createState() => DemoAppState();
}

  String title='dfze';
  String description='feqfqrf';
  int DayNewEvent=11;
  int HourNewEvent=12;
  int AnneeNewEvent=2023;
  int MoisNewEvent=1;

class DemoAppState extends State<DemoApp> {


  DateTime selectedDay;
  List <CleanCalendarEvent> selectedEvent;

  final Map<DateTime,List<CleanCalendarEvent>> events = {
    DateTime (DateTime.now().year, DateTime.now().month,DateTime.now().day+1):
        [
          CleanCalendarEvent(title,
          startTime: DateTime(AnneeNewEvent, MoisNewEvent,DayNewEvent,HourNewEvent,0),
          endTime: DateTime(AnneeNewEvent, MoisNewEvent,DayNewEvent,HourNewEvent+1,0),
          description: description,
          color: Colors.black,
          ),
        ],
    DateTime (DateTime.now().year, DateTime.now().month,DateTime.now().day):
        [
          CleanCalendarEvent('Event A',
          startTime: DateTime(
              DateTime.now().year,DateTime.now().month,DateTime.now().day,10,0),
            endTime:  DateTime(
                DateTime.now().year,DateTime.now().month,DateTime.now().day,12,0),
            description: 'Le Calendrier c est compliqué',
            color: Colors.black),
        ],

    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 3):
    [
      CleanCalendarEvent('On se fait laver le cul',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.black),
      CleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.black),
    ],
  };
  
  

  void _handleData(date){
    setState(() {
      selectedDay = date;
      selectedEvent = events[selectedDay] ?? [];
    });
    print(selectedDay);
  }
  @override
  void initState() {
    // TODO: implement initState
    selectedEvent = events[selectedDay] ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        title: const Text(
          'Calendar',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800
          ),
          ),
        centerTitle: true,
      ),
      body:  SafeArea(
        child: Container(
          child:Calendar(
                startOnMonday: true,
                selectedColor: const Color.fromARGB(255, 0, 0, 0),
                todayColor: Colors.red,
                eventColor: Colors.black,
                eventDoneColor: Colors.amber,
                bottomBarColor: const Color.fromARGB(255, 0, 0, 0),
                onRangeSelected: (range) {
                  print('selected Day ${range.from},${range.to}');
                },
                onDateSelected: (date){
                  return _handleData(date);
                },
                events: events,
                isExpanded: true,
                dayOfWeekStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.black12,
                  fontWeight: FontWeight.w100,
                ),
                bottomBarTextStyle: const TextStyle(
                  color: Colors.white,
                ),
                hideBottomBar: false,
                hideArrows: false,
                weekDays: const ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
              ),
        ),
      ),
    );
  }
}