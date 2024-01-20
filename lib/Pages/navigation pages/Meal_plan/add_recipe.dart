
import 'package:flutter/material.dart';

import 'meal.dart';
class AddRecipePage extends StatefulWidget {
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  String _value= 'veg';
  final items =['Gujarati','Punjabi','South Indian','Kathiyavadi','Chinese','Italian'];
  String selectedValue = 'Gujarati';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 40,right: 0,bottom: 0),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const MealPlanPage()),
                    );
                  }, icon:Icon(Icons.arrow_back_outlined,
                    color: Colors.black,size: 30,)),
                  Text('Add Recipe',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/Meal_plan/Add_recipe/black_cap.png',),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                   color: Colors.grey.shade50,
                  boxShadow: [BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 3.0,
                    offset: Offset(0, -5)
                  )]
                ),
                child: SingleChildScrollView(
                  child: Column(
                  children:[
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 35),
                    child: Row(
                      children: [
                        Text('Recipe Name',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),),
                              
                              
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Image.asset('assets/Meal_plan/Add_recipe/black_cap.png',
                               fit: BoxFit.fitHeight,
                                 height: 25,
                               )
                             ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(decoration: InputDecoration(
                      hintText: 'Enter Recipe Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Row(
                      children: [
                        Text('Recipe Name',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),),
                              
                              
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/Meal_plan/Add_recipe/clock.png',
                              fit: BoxFit.fitHeight,
                              height: 25,
                            )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(decoration: InputDecoration(
                        hintText: 'Enter Cooking Time',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                    ),),
                  ),
                  Row(
                    children: [
                      Radio(value: 'veg', groupValue: _value, onChanged: (value){
                        setState(() {
                          _value = value.toString();
                        });
                      },
                      activeColor: Colors.deepOrange,
                      ),
                      SizedBox(height: 20,),
                      Text('Veg',style: TextStyle(
                        fontSize: 20
                      ),),
                      SizedBox(height: 40,),
                      Radio(value: 'non veg', groupValue: _value, onChanged: (value){
                        setState(() {
                          _value=value.toString() ;
                        });
                      },
                        activeColor: Colors.deepOrange,
                       ),
                      SizedBox(height: 20,),
                      Text('Non Veg',style: TextStyle(fontSize: 20),)
                    ],
                  ),
                    Container(
                           height: 200,width: 380,
                           decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                       border: Border.all(color: Colors.grey),
                          ),
                  
                       child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                            Image(image: AssetImage('assets/Meal_plan/Add_recipe/frame.png')),
                            Text('Add Poster Image',style: TextStyle(
                         fontSize: 25,fontWeight: FontWeight.bold,
                         color: Colors.grey,
                            ),),
                               Text('image size 30 mb',style: TextStyle(
                         color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20
                       ),),
                             ],
                       ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 10),
                      child: Row(
                        children: [
                          Text('Category',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),),
                  
                  
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/Meal_plan/Add_recipe/drop.png',
                                fit: BoxFit.fitHeight,
                                height: 25,
                              )
                          ),
                        ],
                      ),
                    ),
                  
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InputDecorator(decoration: InputDecoration(
                  
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20)
                           )
                         ),
                           child: DropdownButtonHideUnderline(
                             
                            child: DropdownButton<String>(
                            value: selectedValue,
                  
                                            isExpanded: true,
                                            menuMaxHeight: 350,
                                            isDense: true,
                                            iconSize: 30,
                  
                                            onChanged: (String? newValue) {
                                             setState(() {
                                            selectedValue = newValue!;
                              });},
                                             items: <String>['Gujarati','Punjabi','South Indian','Kathiyavadi','Chinese','Italian',
                                             ]
                                            .map<DropdownMenuItem<String>>((String value) {
                             return DropdownMenuItem<String>(
                                           value: value,
                                          child: Text(value),
                                             );
                                           }).toList(),
                  
                                            style: TextStyle(
                                             color: Colors.deepOrange,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold// Set the text color to deep orange
                                           ),
                  
                            ),
                                             ),
                         ),
                       ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 10),
                      child: Row(
                        children: [
                          Text('Calorie',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),),
                  
                  
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/Meal_plan/Add_recipe/kcal.png',
                                fit: BoxFit.fitHeight,
                                height: 25,
                              )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(decoration: InputDecoration(
                          hintText: ' Enter Calorie',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:220,
                        width: 380,
                     color: Colors.brown.shade50,
                       child: Column(
                         children: [
                           Padding(
                              padding: const EdgeInsets.only(left: 30,top: 10),
                              child: Row(
                                children: [
                                  Text('Ingredient',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                  ),),


                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset('assets/Meal_plan/Add_recipe/Ingridient.png',
                                        fit: BoxFit.fitHeight,
                                        height: 25,
                                      )
                                  ),
                                ],
                              ),
                            ),

                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextField(decoration: InputDecoration(
                              hintText: ' Enter Ingredient....',
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),

                              )
                          ),),
                        ),
                           InkWell(
                             onTap: (){},
                             child: Container(
                               height: 50,
                                 width: 350,
                               decoration: BoxDecoration(
                                   color: Colors.deepOrange,
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               child: Center(
                                 child: Text('Add More+',style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 20,

                                 ),),
                               ),
                             ),
                           ),

                      ],
                      ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:370,
                        width: 380,
                        color: Colors.brown.shade50,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 10),
                              child: Row(
                                children: [
                                  Text('Steps',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                  ),),


                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset('assets/Meal_plan/Add_recipe/Ingridient.png',
                                        fit: BoxFit.fitHeight,
                                        height: 25,
                                      )
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0,bottom: 70,left:0,right: 10),
                                    child: Container(
                                      height:20,
                                      width: 20,
                                      child: Center(
                                        child: Text('1',style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                        ),),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: TextFormField(
                                          maxLines: 3,
                                          decoration: InputDecoration(
                                            hintText: ' Enter Details....',
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),

                                            )
                                        ),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade300,
                                    border: Border(

                                    )
                                  ),
                                    child: Image.asset('assets/Meal_plan/Add_recipe/camera 2.png')),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 50,
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text('Add More+',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,

                                  ),),
                                ),
                              ),
                            ),

                          ],
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 10),
                      child: Row(
                        children: [
                          Text('Add Video',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),),


                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/Meal_plan/Add_recipe/video.png',
                                fit: BoxFit.fitHeight,
                                height: 25,
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110,bottom: 0),
                            child: Text('(Optional)',style: TextStyle(
                              fontSize: 15,
                            ),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/Meal_plan/Add_recipe/video 1.png')),
                            Text('Upload Recipe Video',style: TextStyle(
                              fontSize: 25,fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),),
                            Text('video size 100 mb',style: TextStyle(
                                color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ],
                        ),),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                            width: 350,
                          child: Center(
                            child: Text('Save',style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,

                            ),),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )



                  ],
                  ),
                ),
              ),
        
            )

          ],
        ),
      ),
    );
  }
}
