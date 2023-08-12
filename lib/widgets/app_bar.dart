import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../constants/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(150.0);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Plant UI',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  margin: const EdgeInsets.only(right: 15),
                  child: MaterialButton(
                      onPressed: () {},
                      child: const Icon(
                        LineIcons.search,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: MaterialButton(
                    color: Colors.white30,
                    shape: const CircleBorder(),
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: const Icon(
                      LineIcons.shoppingBag,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
