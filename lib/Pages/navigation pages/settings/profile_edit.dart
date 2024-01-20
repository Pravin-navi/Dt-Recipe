import 'package:flutter/material.dart';

import '../become_chef.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                            builder: (context) => const BecomeChef()),
                      );
                    }, icon:Icon(Icons.arrow_back_outlined,
                      color: Colors.white,size: 30,)),
                    Text('Profile Edit',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25
                    ),),

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
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text('Save',
                  style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white
                  ),
                  ),
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
