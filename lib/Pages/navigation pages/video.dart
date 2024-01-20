import 'package:flutter/material.dart';
class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
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
              Text('Videos',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/food 3.png',
                  fit: BoxFit.fitHeight,
                  height: 20,),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 200,top: 0,right: 0,bottom: 0),
                child: IconButton(onPressed: (){}, icon:Icon(Icons.search_outlined,
                size: 35,)),
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
                    child: Image.asset('assets/videos/Burger.png',),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/videos/Choco.png',),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/videos/Noodles.png',),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/videos/veg.png',),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/videos/veg 2.png',),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/videos/mix.png',),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/videos/Burger 2.png',),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/videos/mix 2.png',),
                  ),
                ],
              ),
            ),
        
        
        
        
          ],
        ),
      ),
    );

  }}
