import 'package:flutter/material.dart';

class MobileSection extends StatelessWidget {
  const MobileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Mobile',
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
            itemCount: mobileItems.length,
            itemBuilder: (context, index) {
              final item = mobileItems[index];
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

class MobileItem {
  final String imagePath;
  final String title;
  final String price;
  final String condition;

  final String date;

  MobileItem({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.condition,
    required this.date,
  });
}

final List<MobileItem> mobileItems = [
  MobileItem(
    imagePath: 'assets/images/mobile1.png',
    title: 'Iphone 14 Pro Max',
    price: '30 000 EG',
    condition: 'New',
    date: '22 Sep 2024',
  ),
  MobileItem(
    imagePath: 'assets/images/mobile2.PNG',
    title: 'Iphone 12 Pro Max',
    price: '20 000 EG',
    condition: 'Used',
    date: '22 Sep 2024',
  ),
  MobileItem(
    imagePath: 'assets/images/mobile3.PNG',
    title: 'Iphone 12',
    price: '15 000 EG',
    condition: 'Used',
    date: '22 Sep 2024',
  ),
  MobileItem(
    imagePath: 'assets/images/mobile4.PNG',
    title: 'Iphone XS Max',
    price: '12 000 EG',
    condition: 'Used',
    date: '22 Sep 2024',
  ),
  MobileItem(
    imagePath: 'assets/images/mobile5.PNG',
    title: 'Iphone 7',
    price: '10 000 EG',
    condition: 'Used',
    date: '22 Sep 2024',
  ),
];
