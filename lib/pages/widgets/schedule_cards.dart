import 'package:flutter/material.dart';
import 'package:medical_appointment/pages/utils.dart/colors.dart';

class ScheduleCards extends StatelessWidget {
  final Color color;
  final String date;
  final String day;
  const ScheduleCards(
      {super.key, required this.color, required this.date, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 120,
      width: 250,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: color,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: purple,
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: white),
                  ),
                  Text(
                    day,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '09:30 AM',
                    style: TextStyle(fontWeight: FontWeight.bold, color: white),
                  ),
                  Text(
                    'Dr. João Carlos',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: white,
                        fontSize: 18),
                  ),
                  Text(
                    'Cardiologista',
                    style: TextStyle(fontWeight: FontWeight.bold, color: white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
