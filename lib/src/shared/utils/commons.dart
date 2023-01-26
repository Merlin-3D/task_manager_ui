import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_manager_app/src/core/theming/shared_colors.dart';
import 'package:task_manager_app/src/features/home/home_screen.dart';
import 'package:task_manager_app/src/shared/components/day_block.dart';
import 'package:task_manager_app/src/shared/components/red_line_divider.dart';
import 'package:task_manager_app/src/shared/components/task_container.dart';

final List<Widget> pages = [
  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
];

final List<BottomNavigationBarItem> bottomNavigationBarItem = [
  const BottomNavigationBarItem(
    icon: Icon(EvaIcons.homeOutline),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Ionicons.document_text_outline),
    label: 'Plan',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Ionicons.person_outline),
    label: 'Profile',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Ionicons.notifications_outline),
    label: 'Notification',
  ),
];

final List<Color> backGrayColor = [
  SharedColors.gradientGray1,
  SharedColors.gradientGray2,
  SharedColors.gradientGray2,
  SharedColors.gradientGray2,
  SharedColors.gradientGray2,
];

final List<Color> backPrimaryColor = [
  SharedColors.gradientPrimary1,
  SharedColors.gradientPrimary2,
  SharedColors.gradientPrimary3,
];

final List<Widget> dayWidgetBlock = [
  const DayBlock(
    dayOfMonth: '12',
    dayOfWeek: 'Wed',
    dayIsSelected: true,
  ),
  const DayBlock(
    dayOfMonth: '13',
    dayOfWeek: 'Thu',
    dayIsSelected: false,
  ),
  const DayBlock(
    dayOfMonth: '14',
    dayOfWeek: 'Fri',
    dayIsSelected: false,
  ),
  const DayBlock(
    dayOfMonth: '15',
    dayOfWeek: 'Sat',
    dayIsSelected: false,
  ),
];

final List<Widget> taskDisplayCalendar = [
  const TaskContainer(
    title: 'Mobile App Design',
    subtitle: 'Mike and anita',
    time: '9.00 AM - 10.00 AM',
  ),
  const RedLineDivider(),
  const TaskContainer(
    title: 'Software Testing',
    subtitle: 'Anita and David',
    time: '10.00 AM - 11.20 AM',
  ),
  const TaskContainer(
    title: 'Web Development',
    subtitle: 'David and Mike',
    time: '1.00 AM - 2.20 AM',
  ),
];
