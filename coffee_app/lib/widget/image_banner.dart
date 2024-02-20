import 'package:flutter/material.dart';

class Imagebanner extends StatefulWidget {
  const Imagebanner({super.key});

  @override
  State<Imagebanner> createState() => _ImagebannerState();
}

class _ImagebannerState extends State<Imagebanner> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 315,
        height: MediaQuery.of(context).size.height*0.165,
        decoration: const BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/photo/coffeeimage.png')),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), color: Colors.red),
              child: const Padding(
                padding: EdgeInsets.only(top: 4.0, bottom: 4.0, right: 6.0, left: 6.0),
                child: Text('Promo'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text('By one get one free' , style: TextStyle(fontSize: 20, color: Colors.white,backgroundColor: Colors.black
              ),),
            )
          ]),
        ),
        
      ),
    );
    
  }
}
