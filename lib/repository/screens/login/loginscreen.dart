import 'package:flutter/material.dart';
import 'package:grocery_shop/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:grocery_shop/repository/widgets/uihelper.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(img: "OnboardingScreen.png"),
            SizedBox(height: 25),
            // UiHelper.CustomImage(img: "image10.png"),
            UiHelper.CustomText(
              text: "The Grocery Shop",
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: 'bold',
            ),
            SizedBox(height: 5),
            UiHelper.CustomText(
              text: "India’s last minute app",
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: 'bold',
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Container(
                height: 200,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    UiHelper.CustomText(
                      text: "Akash",
                      color: Color(0xFF000000),
                      fontweight: FontWeight.w400,
                      fontsize: 15,
                    ),
                    UiHelper.CustomText(
                      text: "77350XXXXX",
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.w700,
                      fontsize: 14,
                      fontfamily: 'bold',
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 280,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Bottomnavscreen();
                          },));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                              text: "Login with ",
                              color: Colors.white,
                              fontweight: FontWeight.w700,
                              fontsize: 14,
                              fontfamily: 'bold',
                            ),
                            UiHelper.CustomImage(img: "image9.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    UiHelper.CustomText(
                      text:
                          "Access your saved from Zomato automatically!",
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.w400,
                      fontsize: 10,
                    ),
                    SizedBox(height: 20,),
                    UiHelper.CustomText(
                      text:
                     "or login with phone number",
                      color: Color(0xFF269237),
                      fontweight: FontWeight.w400,
                      fontsize: 14,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
