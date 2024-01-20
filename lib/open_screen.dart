import 'package:flutter/material.dart';
class OpenScreen extends StatefulWidget {
  const OpenScreen({super.key});

  @override
  State<OpenScreen> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen> {


  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      backgroundColor: Colors.grey.shade100,
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,top: 50,right: 0,bottom: 0,),
                  child: Text('Online Food',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,top: 0,right: 0,bottom: 0,),
                  child: Text('Recipe!',style: TextStyle(
                    fontSize: 25,
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 0,right: 0,bottom: 0,),
                  child: Image(image: AssetImage('assets/chef 1.png')),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,
                  size: 30,),
                  hintText: 'Search your favourite food recipe....',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                ),
              ),
              ),
            ),
            GestureDetector(onTap:(){},child: Image(image: AssetImage('assets/Group 27.png'))),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,right: 0,bottom: 0),
              child: Row(
                children: [
                  Text('Category',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/food 3.png',
                    fit: BoxFit.fitHeight,
                                   height: 18,),
                  )
                ],
              ),
            ),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                        children: [
                       Padding(
                           padding: const EdgeInsets.only(left: 30,top: 40,right: 0,bottom: 0),
                           child: Container(
                             height: 150,
                             width: 100,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                 boxShadow:const [ BoxShadow(
                                   color: Colors.black12,
                                 ),]
                             ),
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(15),
                               child: Image.asset('assets/Dhokla.png',
                                 fit: BoxFit.fitHeight,
                                 width: 100,
                                         ),
                             ),
                           ),
                         ),

                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 40,right: 0,bottom: 0),
                            child: Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow:const [ BoxShadow(
                                    color: Colors.black12,

                                  ),]
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/Punjabi.png',
                                  fit: BoxFit.fitHeight,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 40,right: 0,bottom: 0),
                            child: Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow:const [ BoxShadow(
                                    color: Colors.black12,

                                  ),]
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/South.png',
                                  fit: BoxFit.fitHeight,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 40,right: 0,bottom: 0),
                            child: Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow:const [ BoxShadow(
                                    color: Colors.black12,

                                  ),]
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/Meal.png',
                                  fit: BoxFit.fitHeight,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 40,right: 0,bottom: 0),
                            child: Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow:const [ BoxShadow(
                                    color: Colors.black12,

                                  ),]
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/Chinese.png',
                                  fit: BoxFit.fitHeight,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 40,right: 0,bottom: 0),
                            child: Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow:const [ BoxShadow(
                                    color: Colors.black12,

                                  ),]
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/Italian dish.png',
                                  fit: BoxFit.fitHeight,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                   ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,right: 0,bottom: 0),
              child: Row(
                children: [
                  Text('New Recipe',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/food 3.png',
                      fit: BoxFit.fitHeight,
                      height: 18,),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/pizza.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,right: 0,bottom: 0),
              child: Row(
                children: [
                  Text('Best Recipe',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/food 3.png',
                      fit: BoxFit.fitHeight,
                      height: 18,),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/Masala.png',),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/kabab.png',),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,right: 0,bottom: 0),
              child: Row(
                children: [
                  Text('Chief',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/chef 1.png',
                      fit: BoxFit.fitHeight,
                      height: 18,
                    width: 18,),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/George.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/Grant.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/Bliss.png'),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),




    );
  }
}

