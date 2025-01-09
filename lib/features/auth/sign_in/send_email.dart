import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class SendEmail extends StatelessWidget {
  const SendEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/sms.png"),
                ),

                const SizedBox(height: 30),
                const Text(
                  "We sent you an email to reset \nyour password.",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 159,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/sign_in_email");
                    },
                    child: const Center(
                      child: Text(
                        "Return to Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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