import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:medical_appointment/pages/utils.dart/colors.dart';
import 'package:medical_appointment/pages/widgets/ad_card_widget.dart';
import 'package:medical_appointment/pages/widgets/schedule_cards.dart';
import 'package:medical_appointment/pages/widgets/services_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Olá! ',
                                style: TextStyle(fontSize: 18),
                              ),
                              Icon(
                                EvaIcons.heart,
                                color: Colors.red,
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Renata Batista',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg',
                              ),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    )
                  ],
                ),
                Material(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(EvaIcons.options2Outline),
                      ),
                      label: const Text('Pesquise'),
                      hintText: 'Pesquise por área',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Serviços',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ServicesWidget(
                      color: lightGreen,
                      icon: Icon(Icons.baby_changing_station,),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ServicesWidget(
                      color: pink,
                      icon: Icon(Icons.shelves)
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ServicesWidget(
                      color: purple,
                      icon: Icon(Icons.shelves)
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ServicesWidget(
                      color: lightPurple,
                      icon: Icon(Icons.shelves)
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: AdCardWidget(
                size: size,
              )),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Agendamentos',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ScheduleCards(
                        color: lightPurple,
                        date: '17',
                        day: 'Wed',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      ScheduleCards(color: lightPurple, date: '28', day: 'Fri'),
                      SizedBox(
                        width: 12,
                      ),
                      ScheduleCards(color: lightPurple, date: '17', day: 'Wed'),
                      SizedBox(
                        width: 12,
                      ),
                      ScheduleCards(color: lightPurple, date: '17', day: 'Wed'),
                      SizedBox(
                        width: 12,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
