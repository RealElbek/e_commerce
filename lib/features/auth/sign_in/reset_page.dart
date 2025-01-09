
import 'package:flutter/material.dart';
import 'package:untitled3/core/route/rout_names.dart';
import 'package:untitled3/features/auth/widgets/arrow.dart';
import '../widgets/custom_botton.dart';
import '../widgets/log_in_forms.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Arrow(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.signInEmail);
              },
              imgURL: 'assets/icons/back.png',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Forgot Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LogInForms(
              text: "Enter Email address", hideText: false,

            ),
            const SizedBox(
              height: 30,
            ),

            CustomButton(text: "Continue", onPressed: (){
              Navigator.pushNamed(context, RouteNames.sendEmailPage);
            }),


            const SizedBox(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
