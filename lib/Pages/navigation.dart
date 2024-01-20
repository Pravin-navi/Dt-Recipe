import 'package:dtrecipe/Pages/navigation%20pages/settings/setting.dart';
import 'package:dtrecipe/Pages/navigation%20pages/video.dart';
import 'package:flutter/material.dart';

import '../open_screen.dart';
import 'navigation pages/favorite.dart';
import 'navigation pages/Meal_plan/meal.dart';
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}
int myIndex=0;
final Screens=[
  OpenScreen(),
  VideoPage(),
  MealPlanPage(),
  FavoritePage(),
  SettingPage(),

];

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Screens[myIndex],),
      bottomNavigationBar:
      Container(

        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 25,
          )
        ]),

        child: BottomNavigationBar(


          type: BottomNavigationBarType.shifting,
          onTap: (i)=> setState(() {
            myIndex= i;
          }),
          currentIndex: myIndex,



          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(color: Colors.black,

              backgroundColor:Colors.grey,fontSize: 14),items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home,
          ),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.slow_motion_video_outlined,
          ),label: 'Video'),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood_outlined, ),label: 'Meal Plan'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined,),label: 'Settings',),
        ],

        ),

      ),

    );

  }
}
