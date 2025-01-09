
import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';
import '../../core/route/rout_names.dart';
import '../../features/auth/widgets/arrow.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, RouteNames.ordersDetails);
      },
      child: Container(
        height: 70,
        padding: const EdgeInsets.only(left: 20),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: CustomColor.greyColor,
        ),
        child: Row(
          children: [
            const Icon(
        Icons.receipt,
        color: CustomColor.whiteColor,
            ),
            const SizedBox(width: 20),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order  #456765',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  '4 items',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Arrow(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.ordersDetails);
              }, imgURL: 'assets/icons/arrowright2.png',
        ),
  ],
      ),
      ),);
  }
}
