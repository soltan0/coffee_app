import 'package:coffee_app/widget/image_banner.dart';
import 'package:coffee_app/widget/search_bar.dart';
import 'package:flutter/material.dart';
const List<String> items = <String>["Cappucino", "Latte", "Americano", "Expresso", ];
class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color.fromARGB(160, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: 
        [IconButton(onPressed: (){}, icon: const Icon(Icons.home),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.favorite),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shop),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications),)
        
        ],),
      ),
      
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
              flex: 4,
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ),
           Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
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
                  const SearchScreen(),
                   const Imagebanner(),
                   const SizedBox(height: 16,),
                  SizedBox(
                    height: 40 , 
                    child: ListView.builder(  itemCount: 4, 
                    scrollDirection: Axis.horizontal,
                              itemBuilder: ( context, int index, ) {
                                return  Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container( 
                                    decoration: const BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.all(Radius.circular(8))),
                                    child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 16),
                                    child: Text(items[index], ),
                                  )),
                                );
                              }
                    ),
                  ),  

                ],
              
              ),
            ),
        
          ],
          
        ),
         
      ],
    )
    );
  }
}
