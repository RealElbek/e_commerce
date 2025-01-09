import 'package:flutter/material.dart';

import '../core/constants/color.dart';
import '../core/route/rout_names.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(right: 8, left: 8, bottom: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 65),
              const Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/circle.png'),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(right: 4, left: 8, top: 4, bottom: 4),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: CustomColor.greyColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Gilbert Jones",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Glbertjones001@gmail.com",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                              color: CustomColor.buttonColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "121-224-7890",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  elevatedButton("Address", () {
                    Navigator.pushNamed(context, RouteNames.addressEdit);
                  }),
                  elevatedButton("Wishlist", () {
                    Navigator.pushNamed(context, RouteNames.wishlist);
                  }),
                  elevatedButton("Payment", () {
                    Navigator.pushNamed(context, RouteNames.paymentPage);
                  }),
                  elevatedButton("Help", () {}),
                  elevatedButton("Support", () {}),
                ],
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, RouteNames.signInEmail);
                },
                child: const Text(
                  "Sign Out",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget elevatedButton(String text, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(top: 6),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.greyColor,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Image.asset(
            "assets/icons/arrowright2.png",
            width: 15,
            height: 15,
          ),
        ],
      ),
    ),
  );
}