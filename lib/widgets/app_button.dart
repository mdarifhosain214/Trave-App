import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  double size;
  String ?text;
  IconData? iconData;
  bool ?isIcon;
  AppButtons({Key? key,this.isIcon=false,this.iconData,this.text, required this.size ,required this.color, required this.backgroundColor, required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor,
        width: 1.0),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor
      ),
      child:isIcon==false?Center(child: AppText(text: text!,color: color,)):Center(child: Icon(iconData,color: color,))
    );
  }
}
