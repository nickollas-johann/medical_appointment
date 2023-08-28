import 'package:flutter/material.dart';
import 'package:medical_appointment/pages/utils.dart/colors.dart';
import 'package:medical_appointment/pages/widgets/report_card.dart';
import 'package:medical_appointment/pages/widgets/report_list_card.dart';
import 'package:medical_appointment/pages/widgets/small_report_card.dart';

class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Resumo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        )
                      ],
                    ),
                    ReportCard(
                      color: lightBlue,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SmallaReportCardWidget(
                        color: Colors.pink,
                        mainText: 'A+',
                        text: 'Tipo sanguíneo',
                        icon: Icon(Icons.heart_broken, color: white,),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: SmallaReportCardWidget(
                        color: lightPurple,
                        mainText: '80kg',
                        text: 'Peso',
                        icon: Icon(Icons.person, color: white,),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Ultimos exames',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: ListView(
                        children: [
                          ReportListCard(
                            color: lightPurple,
                            text: 'Exames',
                            icon: Icon(Icons.assignment_late_outlined),
                          ),
                          SizedBox(height: 5,),
                          ReportListCard(
                            icon: Icon(Icons.assignment_outlined),
                            color: purple,
                            text: 'Receitas Médicas',
                          ),
                          SizedBox(height: 5,),
                          ReportListCard(
                            icon: Icon(Icons.assignment_add),
                            color: lightGreen,
                            text: 'Atestados',
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
