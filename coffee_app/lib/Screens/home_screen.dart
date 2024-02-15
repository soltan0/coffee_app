import 'package:coffee_app/widget/image_banner.dart';
import 'package:coffee_app/widget/search_bar.dart';
import 'package:flutter/material.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ),
         const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("RigbitelLabs",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          )),
                      Image(
                        image: AssetImage("assets/photo/profil.png"),
                        width: 50,
                      ),
                    ],
                  ),
                  SearchScreen(),
                ],
              ),
            ),
        
          ],
          
        ),
          const Imagebanner(),
      ],
    )
    );
  }
}
