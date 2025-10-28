import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart' show UiHelper;

class Printscreen extends StatelessWidget {
  const Printscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "16 minutes",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "HOME ",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.w700,
                          fontsize: 12,
                          fontfamily: 'bold',
                        ),
                        UiHelper.CustomText(
                          text: "- Vit-AP Thullur",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.w400,
                          fontsize: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 110,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 25),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: UiHelper.CustomTextField(controller: SearchController()),
              ),
            ],
          ),
          SizedBox(height: 30),
          UiHelper.CustomText(
            text: "Print Store",
            color: Color(0xFF000000),
            fontweight: FontWeight.w700,
            fontsize: 32,
          ),
          UiHelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            color: Color(0xFF000000),
            fontweight: FontWeight.w400,
            fontsize: 14,
          ),
          SizedBox(height: 20),

          SizedBox(
            width: 330,
            height: 330,

            child: SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white70,
                  enableFeedback: true,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Still in Development \n (Thanks for clicking )",
                      ),
                    ),
                  );
                },
                child: Text("Drag File Here", style: TextStyle(fontSize: 19)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
