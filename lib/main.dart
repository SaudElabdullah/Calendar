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
            Positioned(
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
                children: [
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
            Positioned(
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
                  children: [
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
                  color: Color(0xFFEEAF4EB),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '1',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '2',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '3',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '4',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '5',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            child: Text(
                              '6',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            child: Text(
                              '7',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '8',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '9',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '10',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '11',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '12',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            child: Text(
                              '13',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            height: height,
                            width: 53,
                            child: Text(
                              '14',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '15',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '16',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '17',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '18',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '19',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            child: Text(
                              '20',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            child: Text(
                              '21',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '22',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '23',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '24',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '25',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '26',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            child: Text(
                              '27',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            child: Text(
                              '28',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '29',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 1.5,
                          ),
                          Container(
                            height: height,
                            width: 53,
                            color: Colors.white,
                            child: Text(
                              '30',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
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
