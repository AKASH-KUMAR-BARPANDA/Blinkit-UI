
import 'package:flutter/material.dart';
import 'package:grocery_shop/repository/widgets/uihelper.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController  SearchController = TextEditingController();
  var GroceryKitchen = [
    {"img": "g1.png", "text": "Vegetables & \nFruits"},
    {"img": "g2.png", "text": "Atta, Dal & \nRice"},
    {"img": "g3.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "g4.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "g5.png", "text": "Biscuits & \nBakery"},
    {"img": "g6.png", "text": "Dry Fruits & \nCereals"},
    {"img": "g7.png", "text": "Kitchen &\nAppliances"},
    {"img": "g8.png", "text": "Tea & \nCoffees"},
    {"img": "g9.png", "text": "Ice Creams & \nmuch more"},
    {"img": "g10.png", "text": "Noodles & \nPacket Food"},
  ];

  var GroceryKitchen2 = [
    {"img": "g6.png", "text": "Dry Fruits & \nCereals"},
    {"img": "g7.png", "text": "Kitchen &\nAppliances"},
    {"img": "g8.png", "text": "Tea & \nCoffees"},
    {"img": "g9.png", "text": "Ice Creams & \nmuch more"},
    {"img": "g10.png", "text": "Noodles & \nPacket Food"},
  ];

  var SnakesDrinks = [
    {"img": "s1.png", "text": "Chips & \nNamkeens"},
    {"img": "s2.png", "text": "Sweets & \nChocalates"},
    {"img": "s3.png", "text": "Drinks & \nJuices"},
    {"img": "s4.png", "text": "Sauces & \nSpreads"},
    {"img": "s5.png", "text": "Beauty & \nCosmetics"},
  ];

  var HouseEssential = [
    {"img": "h1.png", "text": "Laundry & \nDetergent"},
    {"img": "h2.png", "text": "Soap &\n Detergents"},
    {"img": "h3.png", "text": "Perfume & \n Deodrant"},
    {"img": "h4.png", "text": "Sofa & \n Comforty"},
    {"img": "h5.png", "text": "Sampoo & \n Hair oil"},
  ];

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
                color: Color(0xFFD92534),
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
                child: UiHelper.CustomTextField(controller: SearchController),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),

                  Row(
                    children: [
                      SizedBox(width: 20),
                      UiHelper.CustomText(
                        text: "Grocery & Kitchen",
                        color: Color(0xFF000000),
                        fontweight: FontWeight.w700,
                        fontsize: 14,
                        fontfamily: 'bold',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 114,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 78,
                                  width: 71,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFD9EBEB),
                                  ),
                                  child: UiHelper.CustomImage(
                                    img: GroceryKitchen[index]['img']
                                        .toString(), // imp to remember
                                  ),
                                ),
                              ),
                              UiHelper.CustomText(
                                text: GroceryKitchen[index]['text'].toString(),
                                color: Color(0xFF000000),
                                fontweight: FontWeight.w400,
                                fontsize: 10,
                              ),
                            ],
                          );
                        },
                        itemCount: GroceryKitchen.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 114,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 78,
                                  width: 71,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFD9EBEB),
                                  ),
                                  child: UiHelper.CustomImage(
                                    img: GroceryKitchen2[index]['img'].toString(),
                                  ),
                                ),
                              ),
                              UiHelper.CustomText(
                                text: GroceryKitchen2[index]['text'].toString(),
                                color: Color(0xFF000000),
                                fontweight: FontWeight.w400,
                                fontsize: 10,
                              ),
                            ],
                          );
                        },
                        itemCount: GroceryKitchen2.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      UiHelper.CustomText(
                        text: "Snacks & Drinks",
                        color: Color(0xFF000000),
                        fontweight: FontWeight.w700,
                        fontsize: 14,
                        fontfamily: 'bold',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 114,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 78,
                                  width: 71,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFD9EBEB),
                                  ),
                                  child: UiHelper.CustomImage(
                                    img: SnakesDrinks[index]['img'].toString(),
                                  ),
                                ),
                              ),
                              UiHelper.CustomText(
                                text: SnakesDrinks[index]['text'].toString(),
                                color: Color(0xFF000000),
                                fontweight: FontWeight.w400,
                                fontsize: 10,
                              ),
                            ],
                          );
                        },
                        itemCount: SnakesDrinks.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      UiHelper.CustomText(
                        text: "Household Essentials",
                        color: Color(0xFF000000),
                        fontweight: FontWeight.w700,
                        fontsize: 14,
                        fontfamily: 'bold',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 114,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 78,
                                  width: 71,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFD9EBEB),
                                  ),
                                  child: UiHelper.CustomImage(
                                    img: HouseEssential[index]['img'].toString(),
                                  ),
                                ),
                              ),
                              UiHelper.CustomText(
                                text: HouseEssential[index]['text'].toString(),
                                color: Color(0xFF000000),
                                fontweight: FontWeight.w400,
                                fontsize: 10,
                              ),
                            ],
                          );
                        },
                        itemCount: HouseEssential.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


