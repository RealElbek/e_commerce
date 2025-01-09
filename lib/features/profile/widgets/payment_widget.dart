
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color.dart';
import '../../core/route/rout_names.dart';
import '../../features/auth/widgets/arrow.dart';

Widget paymentContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: CustomColor.greyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "**** 4187",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:200 ),
            child: Image.asset(
              'assets/images/Frame 30.png',
              fit: BoxFit.contain,
              height: 15,
            ),
          ),
          Arrow(
            onPressed: () {
              Navigator.pushNamed(context, RouteNames.addCard);
            },
            imgURL: 'assets/icons/arrowright2.png',
          ),
        ],
      ),
    ),
  );
}