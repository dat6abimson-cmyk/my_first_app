import 'package:flutter/material.dart';

import '../widgets/home/mon_an.dart';
import '../widgets/home/daily_discount.dart';
import '../widgets/home/home_header.dart';
import '../widgets/home/home_search_bar.dart';
import '../widgets/home/do_an_gan.dart';
import '../widgets/home/promo_banner.dart';
import '../widgets/home/recommend_list.dart';
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
              const RecommendList(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
