
import 'package:flutter/material.dart';

import '../../core/constants/color.dart';
import '../../core/route/rout_names.dart';
import '../../features/auth/widgets/arrow.dart';

Widget notice(BuildContext context,String text, String bText, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: CustomColor.greyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/icons/heart.png",
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bText,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Arrow(
              onPressed: (){
                Navigator.pushNamed(context, RouteNames.favouritePage);
              },
              imgURL: 'assets/icons/arrowright2.png',
            ),
          ],
        ),
      ),
    ),
  );
}
