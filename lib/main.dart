import 'package:calendar/list.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const CalendarApp());
}

/// The app which hosts the home page which contains the calendar on it.
class CalendarApp extends StatelessWidget {
  const CalendarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Calendar Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double height = 130;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Positioned(
              top: 70,
              child: SizedBox(
                width: 380,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'U',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'M',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'T',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'W',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'R',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'F',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'S',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 90,
              child: Center(
                child: Container(
                  height: 700,
                  width: 380,
                  color: const Color(0xFFEAF4EB),
                  child: GridView.builder(
                    itemCount: calendar.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 3.0,
                      childAspectRatio: 0.4,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return calendar[index];
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
