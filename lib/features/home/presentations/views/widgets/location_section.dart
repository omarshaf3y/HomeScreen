import 'package:flutter/material.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
