import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../login.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller= PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:[ PageView(
          controller: _controller,
          children: [
            Column(
                children: [
                  const Stack(
                    children: [
                      Image(image: AssetImage('assets/Ellipse.png',)),

                      Padding(
                        padding: EdgeInsets.only(left: 6,top: 30,right: 0,bottom: 0,),
                        child: Image(image: AssetImage('assets/chef.png',)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3,
                    effect: const WormEffect(
                      spacing: 16,
                      dotColor: Colors.black26,
                      activeDotColor: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Read',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 23,
                      ),),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('the recipe',
                      style: TextStyle(
                        color: Colors.brown.shade900,
                        fontSize: 23,

                      ),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('and make',
                        style: TextStyle(
                          color: Colors.brown.shade900,
                          fontSize: 23,
                        ),),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('delicious food',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 23,

                        ),)
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CircleAvatar(
                    radius: 40,
                      backgroundColor: Colors.deepOrange,
                    child: IconButton(color: Colors.white,
                        onPressed: (){
                      _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                        }, icon:const Icon(Icons.arrow_forward_rounded,
                        size: 40,)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('skip',
                  style:TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 25,
                  ),)
              ],
            ),
            Column(
              children: [
                const Stack(
                  children: [
                    Image(image: AssetImage('assets/Ellipse.png',)),

                    Padding(
                      padding: EdgeInsets.only(left: 6,top: 30,right: 0,bottom: 0,),
                      child: Image(image: AssetImage('assets/food 1.png',)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SmoothPageIndicator(controller: _controller, count: 3,
                  effect: const WormEffect(
                    spacing: 16,
                    dotColor: Colors.black26,
                    activeDotColor: Colors.deepOrange,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Eat food',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 23,
                      ),),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('that',
                      style: TextStyle(
                        color: Colors.brown.shade900,
                        fontSize: 23,

                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Is Healthy',
                      style: TextStyle(
                        color: Colors.brown.shade900,
                        fontSize: 23,
                      ),),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('for you',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 23,

                      ),)
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.deepOrange,
                  child: IconButton(color: Colors.white,
                      onPressed: (){
                        _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                      }, icon:const Icon(Icons.arrow_forward_rounded,
                        size: 40,)),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text('skip',
                  style:TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 25,
                  ),)
              ],
            ),
            Column(
              children: [
                const Stack(
                  children: [
                    Image(image: AssetImage('assets/Ellipse.png',)),

                    Padding(
                      padding: EdgeInsets.only(left: 30,top: 30,right: 0,bottom: 0,),
                      child: Image(image: AssetImage('assets/food2.png',
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SmoothPageIndicator(controller: _controller, count: 3,
                effect: const WormEffect(
                  spacing: 16,
                  dotColor: Colors.black26,
                  activeDotColor: Colors.deepOrange,
                ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Get all',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 23,
                      ),),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('healthy recipes',
                      style: TextStyle(
                        color: Colors.brown.shade900,
                        fontSize: 23,

                      ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('that',
                      style: TextStyle(
                        color: Colors.brown.shade900,
                        fontSize: 23,
                      ),),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('you need',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 23,

                      ),)
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.deepOrange,
                  child: IconButton(color: Colors.white,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      }, icon:const Icon(Icons.arrow_forward_rounded,
                        size: 40,)),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text('Finish',
                  style:TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 25,
                  ),)

              ],
            ),

            ],
        ),

      ]
      ),

    );
  }
}
