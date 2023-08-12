import 'package:flutter/material.dart';

class SizeCustom {
  double width(BuildContext context) => MediaQuery.of(context).size.width;
  double height(BuildContext context) => MediaQuery.of(context).size.height;
}
