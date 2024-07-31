import 'package:flutter/material.dart';
import 'package:home_screen/features/home/presentations/views/widgets/ad_section.dart';
import 'package:home_screen/features/home/presentations/views/widgets/categories.dart';
import 'package:home_screen/features/home/presentations/views/widgets/featured_section.dart';
import 'package:home_screen/features/home/presentations/views/widgets/mobile_section.dart';

import 'location_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ! Location
            LocationSection(),
            SizedBox(height: 24),
            Row(
              children: [
                Text(
                  'Browse Categories',
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 49, 137),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  '15+',
                  style: TextStyle(
                    color: Color(0xff475569),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(flex: 1),
                Text(
                  'see more',
                  style: TextStyle(
                      color: Color(0xff475569),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            SizedBox(height: 16),
            // ! Categories
            CategoriesWidget(),
            SizedBox(height: 16),
            // ! Featured
            FeaturedSection(),
            // ! Mobile
            MobileSection(),
            // SizedBox(height: 36.38),
            AdSection(),
          ],
        ),
      ),
    );
  }
}
