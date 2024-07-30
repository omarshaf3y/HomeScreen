import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.grey.shade200,
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
          elevation: 0,
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(
            Icons.add,
          ),
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
