import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.chosen})
      : super(key: key);
  final String text;
  final Color color;
  final bool chosen;

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 53,
      color: widget.color,
      padding: const EdgeInsets.only(
        top: 3,
        right: 2,
        left: 2,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 18.5,
                width: 20.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: widget.chosen == true ? const Color(0xFF25794F) : Colors.transparent,
                ),
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: widget.chosen == true ? Colors.white : Colors.black,
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
