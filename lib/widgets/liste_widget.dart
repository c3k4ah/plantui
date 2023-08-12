// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../constants/colors.dart';
import 'icon_widget.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String image;
  const ListTileWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          SizedBox(
            height: 150,
            child: Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(image: ExactAssetImage(image)),
                ),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: const [
                        IconWidget(
                          icon: Icons.abc,
                        ),
                        IconWidget(
                          icon: Icons.abc,
                        ),
                        IconWidget(
                          icon: Icons.abc,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 50,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
