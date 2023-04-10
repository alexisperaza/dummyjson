import 'package:app_project/src/widgets/best_rating.dart';
import 'package:app_project/src/widgets/best_seller.dart';
import 'package:app_project/src/widgets/categories.dart';
import 'package:app_project/src/widgets/flayers.dart';
import 'package:app_project/src/widgets/promo_banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          const PromoBanner(),
          const Categories(),
          const BestSeller(),
          const BestRating()
        ],
      ),
    );
  }
}
