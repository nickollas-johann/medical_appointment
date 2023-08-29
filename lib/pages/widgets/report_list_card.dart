import 'package:flutter/material.dart';
import 'package:medical_appointment/pages/utils.dart/colors.dart';

class ReportListCard extends StatelessWidget {
  final Color color;
  final String text;
  final Icon icon;
  final String files;
  const ReportListCard(
      {super.key, required this.color, required this.text, required this.icon, required this.files});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(width: 2, color: lightgray),
        ),
      ),
      height: 80,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 50,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: color,
              ),
              child: icon,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('$files arquivos'),
                ],
              ),
            ),
          ),
          Expanded(flex: 1, child: Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
