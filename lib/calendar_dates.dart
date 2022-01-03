import 'package:calendar/list.dart';
import 'package:flutter/material.dart';

class CalendarDates extends StatefulWidget {
  const CalendarDates({Key? key}) : super(key: key);

  @override
  State<CalendarDates> createState() => _CalendarDatesState();
}

class _CalendarDatesState extends State<CalendarDates> {
  double height = 700.0;
  double ratio = 0.4;
  List<bool> chosen = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 700, end: height),
        duration: const Duration(milliseconds: 300),
        builder:
            (BuildContext context, double animation1, Widget? child) {
          return TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.4, end: ratio),
            duration: const Duration(milliseconds: 400),
            builder: (BuildContext context, double animation2,
                Widget? child) {
              return Container(
                height: animation1,
                width: 380,
                color: const Color(0xFFEAF4EB),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 31,
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 1.0,
                    childAspectRatio: animation2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          height = height == 700 ? 450 : 700;
                          ratio = ratio == 0.4 ? 0.6 : 0.4;
                          for (var c = 0; chosen.length > c ; c++) {
                            if(c != index){
                              chosen[c] = false;
                            }
                          }
                          chosen[index] = !chosen[index];
                        });
                      },
                      child: TextWidget(
                        text: '${index + 1}',
                        color: Colors.white,
                        chosen: chosen[index],
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
