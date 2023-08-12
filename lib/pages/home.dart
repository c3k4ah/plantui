import 'package:flutter/material.dart';

import '../constants/size.dart';
import '../data/list_plant.dart';
import '../models/plant_model.dart';
import '../widgets/app_bar.dart';
import '../widgets/header.dart';
import '../widgets/liste_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SizeCustom size = SizeCustom();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: size.height(context) * 0.7,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listPlants.length,
                itemBuilder: (context, index) {
                  PlantModel plant = listPlants[index];
                  return ListTileWidget(
                    image: plant.image,
                    title: plant.name,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
