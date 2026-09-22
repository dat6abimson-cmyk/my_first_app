import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  static const _categories = [
    ('assets/Ganban.png', 'Gần bạn'),
    ('assets/Cơm xuất.png', 'Cơm xuất'),
    ('assets/noodle.png', 'Bún/Phở'),
    ('assets/friedchicken.png', 'Gà Rán'),
    ('assets/anvat.png', 'Ăn Vặt'),
    ('assets/douong.png', 'Đồ uống'),
    ('assets/banh.png', 'Bánh Mì'),
    ('assets/diet.png', 'Healthy'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.9,
        children: _categories.map((category) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(category.$1, width: 40, height: 40),
                const SizedBox(height: 8),
                Text(category.$2, style: const TextStyle(fontSize: 12)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
