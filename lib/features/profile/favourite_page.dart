import 'package:flutter/material.dart';
import '../../core/constants/color.dart';
import 'widgets/favouritepage_customclip.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'My Favourites (12)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 20),

            // GridView with CustomClipRRect
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 0.6,
                crossAxisCount: 2,
                children: const [
                  CustomClipRRect(
                    imgURL: 'assets/images/nike_bag.png',
                    text: 'Nike Fuel Pack',
                    price: 32.00,
                    topRightImgURL: 'assets/images/heart.png',
                  ),
                  CustomClipRRect(
                    imgURL: 'assets/images/nike_bag.png',
                    text: 'Nike Show X Rush',
                    price: 204.00,
                    topRightImgURL: 'assets/images/heart.png',
                  ),
                  CustomClipRRect(
                    imgURL: 'assets/images/nike_bag.png',
                    text: 'Men\'s T-Shirt',
                    price: 45.00,
                    topRightImgURL: 'assets/images/heart.png',
                  ),
                  CustomClipRRect(
                    imgURL: 'assets/images/nike_bag.png',
                    text: 'Men\'s Skate T-Shirt',
                    price: 45.00,
                    topRightImgURL: 'assets/images/heart.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}