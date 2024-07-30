import 'package:flutter/material.dart';
import 'package:home_screen/features/home/presentations/views/widgets/bottom_nav_bar.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: const CustomAppBar(),
      bottomNavigationBar: const BottomNavBar(),
      body: const HomeViewBody(),
    );
  }
}
