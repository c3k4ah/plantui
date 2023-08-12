import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size.dart';
import 'categorie.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    SizeCustom size = SizeCustom();
    final List<String> categories = [
      'All',
      'Outdoor',
      'Indoor',
      'Office',
      'Home',
      'Garden',
    ];
    return SizedBox(
      height: size.height(context) * 0.6,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: primaryColor,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                      left: 20,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Top\nPicks',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/plant_8.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: 150,
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(70),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.only(
                    top: 35,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategWidget(
                        index: index,
                        title: categories[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
