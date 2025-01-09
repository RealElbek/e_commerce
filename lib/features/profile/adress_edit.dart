import 'package:flutter/material.dart';
import '../core/constants/color.dart';
import '../core/route/rout_names.dart';

class AddressEdit extends StatelessWidget {
  const AddressEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Navigates back to the previous screen
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: CustomColor.greyColor.withOpacity(0.5),
                      ),
                      child: Image.asset(
                        'assets/icons/back.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  const Text(
                    "Address",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  )
                ],
              ),
              const SizedBox(height: 30),
              // Address card
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                decoration: BoxDecoration(
                  color: CustomColor.greyColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        "2715 Ash Dr. San Jose, South...",
                        style:  TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.addAddress);
                      },
                      child:const  Text(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
