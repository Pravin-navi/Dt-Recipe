import 'package:flutter/material.dart';

import 'add_recipe.dart';
class MealPlanPage extends StatefulWidget {
  const MealPlanPage({super.key});

  @override
  State<MealPlanPage> createState() => _MealPlanPageState();
}

class _MealPlanPageState extends State<MealPlanPage> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,

     body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 20,top: 70,right: 0,bottom: 0),
             child: Row(
               children: [
                 Text('Meal Plan',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 26,
                   fontWeight: FontWeight.bold,
                 ),),
       
                 Padding(
                   padding: const EdgeInsets.only(left: 200,),
                   child: IconButton(onPressed: (){}, icon:Icon(Icons.search_outlined,
                   size: 35,)),
                 )
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Row(
               children: [
                 Image(image: AssetImage('assets/Meal_plan/cup.png')),
                 Text('15 june 2022',
                 style: TextStyle(
                   color: Colors.grey.shade800
       
                 ),)
               ],
             ),
           ),
           Padding(
               padding: const EdgeInsets.only(left: 30,top: 40),
               child: SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     InkWell(
                      onTap:(){
                        setState(() {
                           _isClicked = true;
                        });
                      },
                       child: InkWell(
                         onTap: (){
                           setState(() {
                             _isClicked = !_isClicked;
                           });
                         },
                         child: Stack(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 0,top: 0,right: 9,),
                                 child: Container(
                                   child: Padding(
                                     padding: const EdgeInsets.only(top: 90,left: 20),
                                     child: Text("Sunday",style: TextStyle(
                                       color: _isClicked ? Colors.white : Colors.grey.shade900,

                                     ),),
                                   ),
                                   height: 120,width: 90,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     color: _isClicked ? Colors.deepOrange : Colors.white,


                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
                                 child: Container(

                                   child: Center(
                                     child: Text('12',style: TextStyle(fontSize: 40,
                                       color: _isClicked ? Colors.deepOrange : Colors.grey.shade900,

                                     ),
                                     ),
                                   ),
                                   height: 80,width: 80,
                                   decoration: BoxDecoration(
                                     color: _isClicked ? Colors.white : Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                   ),

                                 ),
                               )
                             ],
                           ),
                       ),
                     ),
                     InkWell(
                       onTap:(){
                         _isClicked = !_isClicked;
                       },
                       child: Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 0,top: 0,right: 9,),
                             child: Container(
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 90,left: 20),
                                 child: Text("Monday",style: TextStyle(
                                   color: _isClicked ? Colors.white : Colors.grey.shade900,

                                 ),),
                               ),
                               height: 120,width: 90,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: _isClicked ? Colors.deepOrange : Colors.white,


                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
                             child: Container(
                               child: Center(
                                 child: Text('13',style: TextStyle(fontSize: 40,
                                   color: _isClicked ? Colors.deepOrange : Colors.grey.shade900,

                                 ),
                                 ),
                               ),
                               height: 80,width: 80,
                               decoration: BoxDecoration(
                                 color: _isClicked ? Colors.white : Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                               ),


                             ),
                           )
                         ],
                       ),
                     ),
                     InkWell(
                       onTap:(){
                         setState(() {
                           _isClicked = !_isClicked;
                         });
                       },
                       child: Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 0,top: 0,right: 9,),
                             child: Container(
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 90,left: 20),
                                 child: Text("Tuesday",style: TextStyle(
                                   color: _isClicked ? Colors.white : Colors.grey.shade900,

                                 ),),
                               ),
                               height: 120,width: 90,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color:_isClicked ? Colors.deepOrange : Colors.white,


                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
                             child: Container(
                               child: Center(
                                 child: Text('15',style: TextStyle(fontSize: 40,color: _isClicked ? Colors.deepOrange : Colors.grey.shade900,
                                 ),
                                 ),
                               ),
                               height: 80,width: 80,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: _isClicked ? Colors.white : Colors.white,
                               ),

                             ),
                           )
                         ],
                       ),
                     ),
                     InkWell(
                       onTap:(){
                         setState(() {
                           _isClicked = !_isClicked;
                         });
                       },
                       child: Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 0,top: 0,right: 9,),
                             child: Container(
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 90,left: 20),
                                 child: Text("Wednesday",style: TextStyle(
                                   color:  _isClicked ? Colors.white : Colors.grey.shade900,

                                 ),),
                               ),
                               height: 120,width: 90,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: _isClicked ? Colors.deepOrange : Colors.white,


                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
                             child: Container(
                               child: Center(
                                 child: Text('15',style: TextStyle(fontSize: 40,color: _isClicked ? Colors.deepOrange : Colors.grey.shade900,

                                 ),
                                 ),
                               ),
                               height: 80,width: 80,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: _isClicked ? Colors.white : Colors.white,
                               ),

                             ),
                           )
                         ],
                       ),
                     ),
                     InkWell(
                       onTap:(){
                         setState(() {
                           _isClicked = !_isClicked;
                         });
                       },
                       child: Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 0,top: 0,right: 9,),
                             child: Container(
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 90,left: 20),
                                 child: Text("Thursday",style: TextStyle(
                                   color: _isClicked ? Colors.white : Colors.grey.shade900,

                                 ),),
                               ),
                               height: 120,width: 90,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color:_isClicked ? Colors.deepOrange : Colors.white,
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
                             child: Container(
                               child: Center(
                                 child: Text('16',style: TextStyle(fontSize: 40,color: _isClicked ? Colors.deepOrange : Colors.grey.shade900,

                                 ),
                                 ),
                               ),
                               height: 80,width: 80,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: _isClicked ? Colors.white : Colors.white,
                               ),

                             ),
                           )
                         ],
                       ),
                     ),
                     InkWell(
                       onTap:(){
                         setState(() {
                           _isClicked = !_isClicked;
                         });
                       },
                       child: Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 0,top: 0,right: 9,),
                             child: Container(
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 90,left: 20),
                                 child: Text("Friday",style: TextStyle(
                                   color:  _isClicked ? Colors.white : Colors.grey.shade900,

                                 ),),
                               ),
                               height: 120,width: 90,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: _isClicked ? Colors.deepOrange : Colors.white,


                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
                             child: Container(
                               child: Center(
                                 child: Text('17',style: TextStyle(fontSize: 40,color:_isClicked ? Colors.deepOrange : Colors.grey.shade900,
                                 ),
                                 ),
                               ),
                               height: 80,width: 80,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: _isClicked ? Colors.white : Colors.white,
                               ),

                             ),
                           )
                         ],
                       ),
                     ),
                     InkWell(
                       onTap:(){
                         setState(() {
                           _isClicked = !_isClicked;
                         });
                       },
                       child: Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 0,top: 0,right: 9,),
                             child: Container(
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 90,left: 20),
                                 child: Text("Saturday",style: TextStyle(
                                   color:  _isClicked ? Colors.white : Colors.grey.shade900,

                                 ),),
                               ),
                               height: 120,width: 90,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: _isClicked ? Colors.deepOrange : Colors.white,


                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
                             child: Container(
                               child: Center(
                                 child: Text('18',style: TextStyle(fontSize: 40,color: _isClicked ? Colors.deepOrange : Colors.grey.shade900,

                                 ),
                                 ),
                               ),
                               height: 80,width: 80,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: _isClicked ? Colors.white : Colors.white,
                               ),

                             ),
                           )
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 20,top: 40,right: 180),
                 child: Text('Wednesday,15 June',
                 style: TextStyle(color: Colors.black,
                 fontSize: 20,
                   fontWeight: FontWeight.bold,
                 ),),
               ),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 20,top: 30),
                     child: Text('Breakfast',style: TextStyle(
                       fontSize: 20,color: Colors.grey.shade600,
                       fontWeight: FontWeight.bold
                     ),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 220,top: 30),
                     child: ElevatedButton(onPressed: (){
                       Navigator.of(context).push(
                         MaterialPageRoute(
                           builder: (context) =>   AddRecipePage(),
                         ),
                       );
                     }, child: Text('+',
                     style: TextStyle(fontSize: 25),),
                       style: ElevatedButton.styleFrom(
                         elevation: 8,
                         shape: CircleBorder(),
                         foregroundColor: Colors.white,
                         backgroundColor: Colors.deepOrange
                       ),
                     ),
                   ),
       
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Image(image: AssetImage('assets/Meal_plan/Egg.png')),
               )
             ],
           ),

           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 20,top: 30),
                 child: Text('Lunch',style: TextStyle(
                     fontSize: 20,color: Colors.grey.shade600,
                     fontWeight: FontWeight.bold
                 ),),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 250,top: 30),
                 child: ElevatedButton(onPressed: (){
                   Navigator.of(context).push(
                     MaterialPageRoute(
                       builder: (context) => const  AddRecipePage(),
                     ),
                   );
                 }, child: Text('+',
                   style: TextStyle(fontSize: 25),),
                   style: ElevatedButton.styleFrom(
                       elevation: 8,
                       shape: CircleBorder(),
                       foregroundColor: Colors.white,
                       backgroundColor: Colors.deepOrange
                   ),
                 ),
               ),

             ],
           ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Image(image: AssetImage('assets/Meal_plan/Egg.png')),
           ),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 20,top: 30),
                 child: Text('Dinner',style: TextStyle(
                     fontSize: 20,color: Colors.grey.shade600,
                     fontWeight: FontWeight.bold
                 ),),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 250,top: 30),
                 child: ElevatedButton(onPressed: (){
                   Navigator.of(context).push(
                     MaterialPageRoute(
                       builder: (context) => const  AddRecipePage(),
                     ),
                   );
                 }, child: Text('+',
                   style: TextStyle(fontSize: 25),),
                   style: ElevatedButton.styleFrom(
                       elevation: 8,
                       shape: CircleBorder(),
                       foregroundColor: Colors.white,
                       backgroundColor: Colors.deepOrange
                   ),
                 ),
               ),

             ],
           ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Image(image: AssetImage('assets/Meal_plan/Egg.png')),
           ),

         ],
       ),

       ),

       );




  }
}



