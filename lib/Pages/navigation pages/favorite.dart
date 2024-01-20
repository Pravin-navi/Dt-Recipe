import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 60,right: 0,bottom: 0),
              child: Row(
        
                children: [
                  Text('Favorite Recipe',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
        
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/chef 1.png',
                      fit: BoxFit.fitHeight,
                      height: 28,),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(left: 110,top: 0,right: 0,bottom: 0),
                    child: IconButton(onPressed: (){}, icon:Icon(Icons.search_outlined,
                      size: 35,)),
                  )
                ],
        
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage('assets/favorite/icecream.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage('assets/favorite/salad.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage('assets/favorite/sandwich.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage('assets/favorite/egg.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage('assets/favorite/salad 2.png')),
            ),
          ],
        ),
      ),
    );
  }
}
