import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Featured',
              style: TextStyle(
                color: Color.fromARGB(255, 2, 49, 137),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(width: 8),
            Text(
              '10+',
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
        const SizedBox(height: 16),
        SizedBox(
          height: 282,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredItems.length,
            itemBuilder: (context, index) {
              final item = featuredItems[index];
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 156,
                      height: 156,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(
                            item.imagePath,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      item.price,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF0F172A),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              item.condition,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: 35,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              '08/10',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.date,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class FeaturedItem {
  final String imagePath;
  final String title;
  final String price;
  final String condition;

  final String date;

  FeaturedItem({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.condition,
    required this.date,
  });
}

final List<FeaturedItem> featuredItems = [
  FeaturedItem(
    imagePath: 'assets/images/mac.png',
    title: 'Mac-book 14',
    price: '30 000 EG',
    condition: 'New',
    date: '22 Sep 2023',
  ),
  FeaturedItem(
    imagePath: 'assets/images/iphone.png',
    title: 'Iphone 14 Pro Max',
    price: '30 000 EG',
    condition: 'Used',
    date: '22 Sep 2023',
  ),
  FeaturedItem(
    imagePath: 'assets/images/mac.png',
    title: 'Iphone 14 Pro Max',
    price: '30 000 EG',
    condition: 'Used',
    date: '22 Sep 2023',
  ),
  FeaturedItem(
    imagePath: 'assets/images/iphone.png',
    title: 'Iphone 14 Pro Max',
    price: '30 000 EG',
    condition: 'Used',
    date: '22 Sep 2023',
  ),
  FeaturedItem(
    imagePath: 'assets/images/mac.png',
    title: 'Iphone 14 Pro Max',
    price: '30 000 E£',
    condition: 'Used',
    date: '22 Sep 2023',
  ),
];
