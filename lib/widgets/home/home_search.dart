import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: const SizedBox(
            height: 48,
            child: Row(
              children: [
                SizedBox(width: 14),
                Icon(Icons.search_rounded, color: Color(0xFF777777)),
                SizedBox(width: 10),
                Text(
                  'Tìm món ăn, nhà hàng...',
                  style: TextStyle(color: Color(0xFF888888)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
