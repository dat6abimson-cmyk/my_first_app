import 'package:flutter/material.dart';

import '../../screens/Taikhoan.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined, color: Color(0xFFFF8A00)),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Địa chỉ của bạn',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF616161),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'FOOD DELIVERY !',
                  style: TextStyle(
                    fontFamily: 'iCielCrocante',
                    fontSize: 25,
                    color: Color(0xFFFFAA00),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Color(0xFF303030)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TaiKhoanScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
