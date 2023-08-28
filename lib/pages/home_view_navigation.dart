import 'package:flutter/material.dart';
import 'package:medical_appointment/pages/home_view.dart';
import 'package:medical_appointment/pages/notifications_view.dart';
import 'package:medical_appointment/pages/report_view.dart';
import 'package:medical_appointment/pages/schedule_view.dart';

class HomeViewNavigation extends StatefulWidget {
  const HomeViewNavigation({super.key});

  @override
  State<HomeViewNavigation> createState() => _HomeViewNavigationState();
}

class _HomeViewNavigationState extends State<HomeViewNavigation> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.calendar_month), label: 'Agenda'),
          NavigationDestination(
              icon: Icon(Icons.analytics), label: 'Resumo'),
          NavigationDestination(
              icon: Icon(Icons.notifications), label: 'Notificações')
        ],
      ),
      body: [const HomeView(), const ScheduleView() ,const ReportView(), const NotificationsView()][currentPageIndex],
    );
  }
}