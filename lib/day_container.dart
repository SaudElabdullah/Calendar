import 'package:flutter/material.dart';

import 'list.dart';

class DayContainer extends StatefulWidget {
  DayContainer(this.height, this.ratio, {Key? key}) : super(key: key);
  double height;
  double ratio;

  @override
  _DayContainerState createState() => _DayContainerState();
}

class _DayContainerState extends State<DayContainer> {
  Color containerColor = Colors.transparent;
  Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: 380,
      color: const Color(0xFFEAF4EB),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 31,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
          childAspectRatio: widget.ratio,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                widget.height = widget.height == 700 ? 450 : 700;
                widget.ratio = widget.ratio == 0.4 ? 0.6 : 0.4;
                containerColor = containerColor == const Color(0xFF25794F)
                    ? Colors.transparent
                    : const Color(0xFF25794F);
                textColor =
                    textColor == Colors.white ? Colors.black : Colors.white;
              });
            },
            child: TextWidget(
              text: '${index + 1}',
              color: Colors.white,
              containerColor: containerColor,
              textColor: textColor,
            ),
          );
        },
      ),
    );
  }
}
