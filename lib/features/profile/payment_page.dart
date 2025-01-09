import 'package:flutter/material.dart';
import 'package:untitled3/profile/widgets/payment_widget.dart';
import '../../core/route/rout_names.dart';
import '../core/constants/color.dart';
import '../features/auth/widgets/arrow.dart';

class PaymentPage extends StatelessWidget { 
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Arrow(
                      onPressed: () {
                        Navigator.pop(context); // Stack'dan PaymentPage'ni yopib, oldingi sahifaga qaytadi
                      },
                      imgURL: 'assets/icons/back.png',
                    ),
                    const Text(
                      "Payment",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Cards",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20),
                paymentContainer(context),
                paymentContainer(context),
                const SizedBox(height: 20),
                const Text(
                  "Paypal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: CustomColor.greyColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          "Cloth@gmail.com",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          overflow: TextOverflow.ellipsis,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}


