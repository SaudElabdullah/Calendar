import 'package:calendar/calendar_dates.dart';
import 'package:calendar/days.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const CalendarApp());
}

class CalendarApp extends StatelessWidget {
  const CalendarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calendar Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            const Positioned(
              top: 15,
              left: 10,
              child: Text(
                'Monday 21 Nov 2021',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: Row(
                children: const [
                  Text(
                    'TERM 211: WEEK 13',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15,
                  )
                ],
              ),
            ),
            const Positioned(
              top: 10,
              right: 10,
              child: Icon(
                Icons.add_circle_outline,
                size: 35,
              ),
            ),
            const Days(),
            CalendarDates(),
          ],
        ),
      ),
    );
  }
}
