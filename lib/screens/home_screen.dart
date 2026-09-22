import 'package:flutter/material.dart';

import '../widgets/home/DanhMuc.dart';
import '../widgets/home/GiamgiaHangNgay.dart';
import '../widgets/home/home_header.dart';
import '../widgets/home/home_search.dart';
import '../widgets/home/do_an_gan.dart';
import '../widgets/home/DAU.dart';
import '../widgets/home/DSGoiY.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HomeHeader(),
              const SizedBox(height: 12),
              HomeSearchBar(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => const SearchScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 12),
              const PromoBanner(),
              const SizedBox(height: 20),
              const CategoryGrid(),
              const SizedBox(height: 20),
              const DailyDiscount(),
              const SizedBox(height: 20),
              const NearbyFood(),
              const SizedBox(height: 20),
              const DanhSachGoiY(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
