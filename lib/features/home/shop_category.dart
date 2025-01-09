
import 'package:flutter/material.dart';
import 'package:untitled3/features/home/widgets/categorybutton.dart';
import '../../core/constants/color.dart';
import '../../core/route/rout_names.dart';
import '../auth/widgets/arrow.dart';

class ShopCategories extends StatelessWidget {
  const ShopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrow(
                onPressed: () {
                  Navigator.pop(context);
                },
                imgURL: "assets/icons/back.png",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Shop by Categories",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              CategoryButtonWidget(
                  imgURL: "assets/images/Bag.png",
                  text: "Hoodies",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.productsCategories,
                        arguments: "Hoodies");
                  }),
              CategoryButtonWidget(
                  imgURL: "assets/images/Bag.png",
                  text: "Shorts",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.productsCategories,
                        arguments: "Shorts");
                  }),
              CategoryButtonWidget(
                  imgURL: "assets/images/Bag.png",
                  text: "Shoes",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.productsCategories,
                        arguments: "Shoes");
                  }),
              CategoryButtonWidget(
                  imgURL: "assets/images/Bag.png",
                  text: "Bag",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.productsCategories,
                        arguments: "Bag");
                  }),
              CategoryButtonWidget(
                  imgURL: "assets/images/Bag.png",
                  text: "Accessories",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.productsCategories,
                        arguments: "Accessories");
                  }),
            ],
          ),
        ),
      ),
    );
  }}