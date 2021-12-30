import 'package:flutter/material.dart';

const List<TextWidget> calendar = <TextWidget>[
  TextWidget(text: '1', color: Colors.white,),
  TextWidget(text: '2', color: Colors.white,),
  TextWidget(text: '3', color: Colors.white,),
  TextWidget(text: '4', color: Colors.white,),
  TextWidget(text: '5', color: Colors.white,),
  TextWidget(text: '6', color: Colors.transparent,),
  TextWidget(text: '7', color: Colors.transparent,),
  TextWidget(text: '8', color: Colors.white,),
  TextWidget(text: '9', color: Colors.white,),
  TextWidget(text: '10', color: Colors.white,),
  TextWidget(text: '11', color: Colors.white,),
  TextWidget(text: '12', color: Colors.white,),
  TextWidget(text: '13', color: Colors.transparent,),
  TextWidget(text: '14', color: Colors.transparent,),
  TextWidget(text: '15', color: Colors.white,),
  TextWidget(text: '16', color: Colors.white,),
  TextWidget(text: '17', color: Colors.white,),
  TextWidget(text: '18', color: Colors.white,),
  TextWidget(text: '19', color: Colors.white,),
  TextWidget(text: '20', color: Colors.transparent,),
  TextWidget(text: '21', color: Colors.transparent,),
  TextWidget(text: '22', color: Colors.white,),
  TextWidget(text: '23', color: Colors.white,),
  TextWidget(text: '24', color: Colors.white,),
  TextWidget(text: '25', color: Colors.white,),
  TextWidget(text: '26', color: Colors.white,),
  TextWidget(text: '27', color: Colors.transparent,),
  TextWidget(text: '28', color: Colors.transparent,),
  TextWidget(text: '29', color: Colors.white,),
  TextWidget(text: '30', color: Colors.white,),
  TextWidget(text: '31', color: Colors.white,),
];

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.text, required this.color})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 53,
      color: color,
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
