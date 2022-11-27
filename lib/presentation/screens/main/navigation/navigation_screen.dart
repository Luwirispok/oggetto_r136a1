import 'dart:developer';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:oggetto/presentation/resources/app_colors.dart';
import 'package:oggetto/presentation/screens/main/employees/employees_screen.dart';
import 'package:oggetto/presentation/screens/main/games/games_screen.dart';
import 'package:oggetto/presentation/screens/main/profile/profile_screen.dart';
import 'package:oggetto/presentation/screens/main/schedule/schedule_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
   final List<Widget> _widgetOptions = [
    const EmployeesScreen(),
    const GamesScreen(),
    const ScheduleScreen(),
    const ProfileScreen(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea

        
        (
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        backgroundColor: AppColors.tertiary,
        color: AppColors.onTertiary1,
        activeColor: AppColors.onTertiary2,
        height: 70,
        initialActiveIndex: 0,
        top: -20,
        curveSize: 120,
        onTap: (int i) {
          _onItemTapped(i);
          log('click index=$i');
        },
        items: const [
          TabItem(icon: Icons.grid_view_outlined),
          TabItem(icon: Icons.extension_outlined),
          TabItem(icon: Icons.calendar_today_outlined),
          TabItem(icon: Icons.person_outline),
        ],
      ),
    );
  }
}

class BottomCustomBar extends StatefulWidget {
  BottomCustomBar({Key? key, required this.indexItem}) : super(key: key);

  int indexItem = 0;

  @override
  State<BottomCustomBar> createState() => _BottomCustomBarState();
}

class _BottomCustomBarState extends State<BottomCustomBar> {
  int _indexItem = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.tertiary,
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.grid_view_outlined,
              color: _indexItem == 0 ? AppColors.onTertiary2 : AppColors.onTertiary1,
              size: 40,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.extension_outlined,
              color: _indexItem == 1 ? AppColors.onTertiary2 : AppColors.onTertiary1,
              size: 40,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.calendar_today_outlined,
              color: _indexItem == 2 ? AppColors.onTertiary2 : AppColors.onTertiary1,
              size: 40,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.person_outline,
              color: _indexItem == 3 ? AppColors.onTertiary2 : AppColors.onTertiary1,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}

var eee = [
  IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.grid_view_outlined,
      color: AppColors.onTertiary1,
      size: 40,
    ),
  ),
  IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.extension_outlined,
      color: AppColors.onTertiary1,
      size: 40,
    ),
  ),
  IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.calendar_today_outlined,
      color: AppColors.onTertiary1,
      size: 40,
    ),
  ),
  IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.person_outline,
      color: AppColors.onTertiary1,
      size: 40,
    ),
  ),
];
