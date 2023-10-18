import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jeomgymjeok_gwabuha/design/Pallete.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.onSelectPage,
    required this.pageIndex,
  });

  final void Function(int index) onSelectPage;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Platform.isIOS ? 120 : 80,
      child: BottomNavigationBar(
        backgroundColor: pallete[Pallete.deepNavy],
        onTap: onSelectPage,
        currentIndex: pageIndex,
        selectedItemColor: pallete[Pallete.flash],
        unselectedItemColor: pallete[Pallete.white],
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          height: 2,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          height: 2,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/calendar.svg',
                width: 24, height: 24),
            activeIcon: SvgPicture.asset('assets/icons/calender_active.svg',
                width: 24, height: 24),
            label: '캘린더',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/workout.svg',
                width: 24, height: 24),
            activeIcon: SvgPicture.asset('assets/icons/workout_active.svg',
                width: 24, height: 24),
            label: '운동 기록',
          ),
        ],
      ),
    );
  }
}
