import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  final Color color;
  final Icon icon;
  const ServicesWidget({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: color,
      ),
      child: icon,
    );
  }
}
