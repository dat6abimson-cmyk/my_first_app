import 'package:flutter/material.dart';

class DailyDiscount extends StatelessWidget {
  const DailyDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Giảm giá mỗi ngày',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Xem tất cả',
                  style: TextStyle(
                    color: Color(0xFFFF8A00),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 172,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, _) => const SizedBox(width: 12),
              itemBuilder: (context, index) => _DiscountCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}

class _DiscountCard extends StatelessWidget {
  const _DiscountCard({required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    const titles = [
      'Ăn ngon giảm đến 50%',
      'Deal trưa siêu tiết kiệm',
      'Freeship cho đơn từ 79K',
    ];
    return SizedBox(
      width: 154,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/lotteria.png', fit: BoxFit.cover),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: .28),
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              bottom: 10,
              child: Text(
                titles[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
