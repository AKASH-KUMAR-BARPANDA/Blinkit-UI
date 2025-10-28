import 'package:flutter/material.dart';
import 'package:grocery_shop/repository/widgets/uihelper.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  child: UiHelper.CustomTextField(
                    controller: SearchController(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            UiHelper.CustomImage(img: "shoppingcart1.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Reordering will be easy",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 16,
              fontfamily: "bold",
            ),
            UiHelper.CustomText(
              text: "Items you order will show up here so you can buy",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 12,
            ),
            UiHelper.CustomText(
              text: "them again easily.",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 12,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                UiHelper.CustomText(
                  text: "Bestsellers",
                  color: Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontsize: 16,
                  fontfamily: "bold",
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image45.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButton(() {}),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image44.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButton(() {}),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image46.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButton(() {}),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image44.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButton(() {}),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
