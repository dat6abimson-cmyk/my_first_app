import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  static const _categories = [
    (Icons.rice_bowl_outlined, 'Ăn sáng'),
    (Icons.local_drink_outlined, 'Trà sữa'),
    (Icons.lunch_dining_outlined, 'Đồ ăn nhanh'),
    (Icons.cake_outlined, 'Bánh ngọt'),
    (Icons.emoji_food_beverage_outlined, 'Cà phê'),
    (Icons.restaurant_outlined, 'Cơm văn phòng'),
    (Icons.set_meal_outlined, 'Món Việt'),
    (Icons.ramen_dining_outlined, 'Mì & phở'),
    (Icons.icecream_outlined, 'Tráng miệng'),
    (Icons.more_horiz_rounded, 'Xem thêm'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Danh mục',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 12,
              crossAxisSpacing: 8,
              childAspectRatio: .82,
            ),
            itemBuilder: (context, index) {
              final category = _categories[index];
              return Column(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF1DF),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      category.$1,
                      color: const Color(0xFFFF8A00),
                      size: 22,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    category.$2,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
