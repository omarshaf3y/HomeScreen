import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color.fromARGB(255, 176, 180, 185),
                width: .5,
              ),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff64748B),
                  size: 25,
                ),
                SizedBox(width: 6),
                Text(
                  'Alexandria, Egypt',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Spacer(flex: 1),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Row(
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
        ],
      ),
    );
  }
}
