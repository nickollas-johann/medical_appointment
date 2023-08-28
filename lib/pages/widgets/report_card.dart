import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final Color color;
  const ReportCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: color,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Está cuidando bem da sua saúde!', textAlign: TextAlign.center,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '95',
                      style: TextStyle(fontSize: 50),
                    ),
                    Text('bpm')
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/PinClipart.com_clam-clipart-black-and_827667.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
