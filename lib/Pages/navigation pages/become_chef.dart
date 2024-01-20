import 'package:dtrecipe/Pages/navigation%20pages/settings/profile_edit.dart';
import 'package:dtrecipe/Pages/navigation%20pages/settings/setting.dart';
import 'package:flutter/material.dart';
class BecomeChef extends StatefulWidget {
  const BecomeChef({super.key});

  @override
  State<BecomeChef> createState() => _BecomeChefState();
}

class _BecomeChefState extends State<BecomeChef> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
         Stack(children:[ Image.asset('assets/setting/become_chef/Rectangle 38.png',),
       
         Padding(
           padding: const EdgeInsets.only(left: 10,top: 30,right: 0,bottom: 0),
           child: Row(
             children: [
               IconButton(onPressed: (){
                 Navigator.of(context).push(
                     MaterialPageRoute(
                     builder: (context) => const SettingPage()),
                 );
               }, icon:Icon(Icons.arrow_back_outlined,
               color: Colors.white,size: 30,)),
               Text('Become chef',style: TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
                 fontSize: 25
               ),),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Image.asset('assets/setting/become_chef/chef_cap.png',),
               ),
             ],
           ),
         ),
           Padding(
             padding: const EdgeInsets.only(left: 0,top: 100,right: 0,bottom: 0),
             child: Center(
               child: Image.asset('assets/setting/become_chef/Ellipse 31.png',
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 100,top: 190,right: 0,bottom: 0),
             child: Center(
               child: InkWell(
                 onTap: (){
                   Navigator.of(context).push(
                     MaterialPageRoute(
                       builder: (context) => const EditProfile(),
                     ),
                   );
                 },
                 child: Image.asset('assets/setting/become_chef/pen.png',
                 ),
               ),
             ),
           ),
         ],
         ) ,
           SizedBox(
             height: 30,
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: TextField(
       
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15)
                 ),
                 hintText: 'Chef Name',
                 prefixIcon: const Icon(Icons.person_outlined,
                   size: 30,),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextFormField(
               minLines: 2,
               maxLines: 5,
               keyboardType: TextInputType.multiline,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                 ),
                 hintText: 'Address',
                 prefixIcon: const Icon(Icons.location_on_outlined,
                   size: 30,),
       
               ),
               ),
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: TextField(
       
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15)
                 ),
                 hintText: 'Email Id',
                 prefixIcon: const Icon(Icons.email_outlined,
                   size: 30,),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: TextField(
       
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15)
                 ),
                 hintText: 'Mobile No',
                 prefixIcon: const Icon(Icons.smartphone_outlined,
                   size: 30,),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: TextField(
       
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15)
                 ),
                 hintText: 'password',
                 prefixIcon: const Icon(Icons.lock_outline_rounded,
                   size: 30,),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: TextField(
       
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15)
                 ),
                 hintText: 'Confirm password',
                 prefixIcon: const Icon(Icons.lock_outline_rounded,
                   size: 30,),
               ),
             ),
           ),
       
       
       
         ],
       ),
     ),
    );
  }
}
