import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.containerColor,
      required this.textColor})
      : super(key: key);
  final String text;
  final Color color;
  final Color containerColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 53,
      color: color,
      padding: const EdgeInsets.only(top: 3, right: 2, left: 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 18,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: containerColor,
                ),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
