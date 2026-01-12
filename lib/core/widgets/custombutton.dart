import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {

  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final String? text;
  final TextStyle? style;
  final TextStyle? textStyle;
  final Function()? onTap;
  final  double? height;
  final  double? width;
  final BoxBorder? border;

  const Custombutton({super.key,
    this.color,
    this.borderRadius,
    this.text,
    this.style,
    this.textStyle,
    this.onTap,
    this.height,
    this.width,
    this.border});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        alignment: Alignment.center,
        child: Container(


          height: 44,
          width: 330,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
            border: border,
          ),
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text ?? "",
              style: textStyle ?? TextStyle(color: Colors.white),


            ),

          ),

        ),


      ),
    );
  }
}