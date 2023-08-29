import 'package:flutter/material.dart';

class SmallaReportCardWidget extends StatelessWidget {
  final Color color;
  final String mainText;
  final String text;
  final Icon icon;
  const SmallaReportCardWidget(
      {super.key,
      required this.color,
      required this.mainText,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          Text(
            text,
          ),
          Text(
            mainText,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
