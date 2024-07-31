import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 123,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryItems.length,
        itemBuilder: (context, index) {
          final item = categoryItems[index];
          return Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Column(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff64748B),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image.asset(
                      item.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.label,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CategoryItem {
  final String imagePath;
  final String label;

  CategoryItem({required this.imagePath, required this.label});
}

final List<CategoryItem> categoryItems = [
  CategoryItem(imagePath: 'assets/images/Ellipse 1.png', label: 'Mobiles'),
  CategoryItem(
      imagePath: 'assets/images/Ellipse 1 (1).png',
      label: 'Property\nfor Sale'),
  CategoryItem(imagePath: 'assets/images/Ellipse 1 (2).png', label: 'Vehicles'),
  CategoryItem(
      imagePath: 'assets/images/Ellipse 1 (3).png', label: 'Motorcars'),
  CategoryItem(imagePath: 'assets/images/Ellipse 1 (4).png', label: 'Job'),
  CategoryItem(imagePath: 'assets/images/fashion.png', label: 'Fashions'),
];
