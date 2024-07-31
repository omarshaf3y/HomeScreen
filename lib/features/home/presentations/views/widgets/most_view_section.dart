import 'package:flutter/material.dart';

class MostViewSection extends StatelessWidget {
  const MostViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Most View',
              style: TextStyle(
                color: Color.fromARGB(255, 2, 49, 137),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(width: 8),
            Text(
              '100+',
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
            itemCount: mostItems.length,
            itemBuilder: (context, index) {
              final item = mostItems[index];
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
                            color: Colors.grey.shade200,
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
                            color: Colors.grey.shade200,
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

class MostViewItem {
  final String imagePath;
  final String title;
  final String price;
  final String condition;

  final String date;

  MostViewItem({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.condition,
    required this.date,
  });
}

final List<MostViewItem> mostItems = [
  MostViewItem(
    imagePath: 'assets/images/most1.PNG',
    title: 'Iphone 14 Pro Max',
    price: '30 000 EG',
    condition: 'New',
    date: '22 Sep 2024',
  ),
  MostViewItem(
    imagePath: 'assets/images/mac.png',
    title: 'Mac-book 14',
    price: '30 000 EG',
    condition: 'Used',
    date: '22 Sep 2024',
  ),
  MostViewItem(
    imagePath: 'assets/images/most2.PNG',
    title: 'Airpods',
    price: '75 000 EG',
    condition: 'Used',
    date: '22 Sep 2024',
  ),
  MostViewItem(
    imagePath: 'assets/images/most3.PNG',
    title: 'Sony 8K Camera',
    price: '200 000 EG',
    condition: 'Used',
    date: '22 Sep 2024',
  ),
  MostViewItem(
    imagePath: 'assets/images/most4.PNG',
    title: 'Sony Ultra Plus Mouse',
    price: '60 000 EG',
    condition: 'Used',
    date: '22 Sep 2024',
  ),
];
