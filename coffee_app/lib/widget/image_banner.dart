import 'package:flutter/material.dart';

class Imagebanner extends StatefulWidget {
  const Imagebanner({super.key});

  @override
  State<Imagebanner> createState() => _ImagebannerState();
}

class _ImagebannerState extends State<Imagebanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
     
      height: 140,
      width: 315,
       padding: const EdgeInsets.fromLTRB(30, 140, 30, 315),
       margin: const EdgeInsets.all(170),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/photo/coffeeimage.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
