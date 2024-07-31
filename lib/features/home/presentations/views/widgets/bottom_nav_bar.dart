import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:home_screen/features/home/presentations/views/widgets/custom_floating_action_button.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: const Color(0xffFFFFFF),
      animationDuration: const Duration(milliseconds: 300),
      items: [
        const Icon(
          Icons.home,
          size: 25,
          color: Color(0xff3A78FF),
        ),
        const Icon(
          Icons.chat_outlined,
          size: 25,
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0,
          onPressed: () {},
          child: const ColoredFloatingButton(),
        ),
        const Icon(
          Icons.favorite_border_outlined,
          size: 25,
        ),
        const Icon(
          Icons.person,
          size: 25,
        ),
      ],
    );
  }
}
