import 'package:flutter/material.dart';

import '../become_chef.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Image.asset('assets/setting/bhoomi.jpg'),
          SizedBox(
            height: 50,
          ),
          MaterialButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BecomeChef(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 0,right: 0,bottom: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset('assets/setting/chef.png',
                          fit: BoxFit.fitHeight,
                      height: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Become chef',style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          MaterialButton(
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 0,right: 0,bottom: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset('assets/setting/About-Us.png',
                      fit: BoxFit.fitHeight,
                      height: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('About Us',style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          MaterialButton(
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 0,right: 0,bottom: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset('assets/setting/privacy-policy.png',
                      fit: BoxFit.fitHeight,
                      height: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Privacy policy',style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                  )
                ],
              ),
            ),
          ),
        SizedBox(
          height: 25,
        ),
        MaterialButton(
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 0,right: 0,bottom: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset('assets/setting/terms.png',
                      fit: BoxFit.fitHeight,
                      height: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Terms & Condition',style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                  )
                ],
              ),
            ),
          ),
         Padding(
           padding: const EdgeInsets.only(left: 20,top: 20,right:215,bottom: 0),
           child: TextButton.icon(onPressed: (){}, icon:Icon(Icons.logout,
           color: Colors.orangeAccent,size: 27,), label: Text('Logout',style: TextStyle(
             color: Colors.orangeAccent,fontSize: 25,fontWeight: FontWeight.bold
           ),),

           ),
         ),


        ],
      ),
    );
  }
}
