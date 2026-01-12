import 'package:flutter/material.dart';

class CustombuttonTwo extends StatelessWidget {
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final String? text;
  final IconData? icon;
  final Function()? onTap;
  final double? height;
  final double? width;
  final BoxBorder? border;
  final TextStyle? style;

  const CustombuttonTwo({
    super.key,
    this.color,
    this.borderRadius,
    this.text,
    this.icon,
    this.onTap,
    this.height,
    this.width,
    this.border,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // onTap optional
      child: Container(
        height: height ?? 50,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color ?? const Color(0xFF0A0F4F),
              const Color(0xFF1622A8),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(25),
          border: border,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text ?? "",
              style: style ??
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            if (icon != null) const SizedBox(width: 8),
            if (icon != null) Icon(icon, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
