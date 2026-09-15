import 'package:flutter/material.dart';

class RecommendList extends StatelessWidget {
  const RecommendList({super.key});

  static const _restaurants = [
    ('Cơm tấm Sài Gòn', 'Cơm tấm, món Việt', 'assets/goiymon.png'),
    ('Lotteria', 'Gà rán, burger', 'assets/lotteria.png'),
    ('Bếp Nhà Mình', 'Món nhà nấu', 'assets/banphim.png'),
    ('Quán ngon mỗi ngày', 'Bún, phở, cơm', 'assets/hello.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Gợi ý hàng đầu cho bạn',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          ..._restaurants.map(
            (restaurant) => _RestaurantTile(
              name: restaurant.$1,
              detail: restaurant.$2,
              image: restaurant.$3,
            ),
          ),
        ],
      ),
    );
  }
}

class _RestaurantTile extends StatelessWidget {
  const _RestaurantTile({
    required this.name,
    required this.detail,
    required this.image,
  });
  final String name;
  final String detail;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  detail,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 6),
                const Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFFA000),
                      size: 16,
                    ),
                    SizedBox(width: 3),
                    Text('4.8  ·  1.2 km', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right_rounded, color: Colors.grey),
        ],
      ),
    );
  }
}
