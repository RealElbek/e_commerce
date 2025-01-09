import 'package:flutter/material.dart';
import 'package:untitled3/profile/widgets/wishlist_widget.dart';
import '../../core/constants/color.dart';
import '../core/route/rout_names.dart';
import '../features/auth/widgets/arrow.dart';
class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Arrow(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    imgURL: "assets/icons/back.png",
                  ),
                  const SizedBox(width: 100),
                  const Text(
                    "Wishlist",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  notice(context, "My Favorite", "12 Products", () {
                    Navigator.pushNamed(context, RouteNames.productsCategories,
                        arguments: 'My Favorite');
                  }),
                  notice(context, "T-Shirts", "4 Products", () {
                    Navigator.pushNamed(context, RouteNames.productsCategories,
                        arguments: 'T-Shirts');
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
