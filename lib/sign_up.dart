import 'package:flutter/material.dart';

import 'Pages/navigation.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}
bool isPasswordObscure=true;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage('assets/LOGO.jpg')),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 20),
              child: Container(
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow:const [ BoxShadow(
                      color: Colors.grey,blurRadius: 20,
                      offset: Offset(0,10),
                    ),]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.person_2_outlined,
                      size: 30,),
                    hintText: " Name",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 20),
              child: Container(
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow:const [ BoxShadow(
                      color: Colors.grey,blurRadius: 20,
                      offset: Offset(0,10),
                    ),]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.mail_outline_rounded,
                      size: 30,),
                    hintText: " Email Address",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 20),
              child: Container(
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow:const [ BoxShadow(
                      color: Colors.grey,blurRadius: 20,
                      offset: Offset(0,10),
                    ),]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.smartphone_outlined,
                      size: 30,),
                    hintText: " Email Address",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 20),
              child: Container(
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow:const [ BoxShadow(
                      color: Colors.grey,blurRadius: 20,
                      offset: Offset(0,10),
                    ),]
                ),
                child: TextField(
                  obscureText: isPasswordObscure,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isPasswordObscure=!isPasswordObscure;

                      });
                    }, icon:const Icon(Icons.remove_red_eye_rounded)),
                    prefixIcon: const Icon(Icons.lock_outline_rounded,
                      size: 30,),
                    hintText: " Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20),
              child: Container(
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow:const [ BoxShadow(
                      color: Colors.grey,blurRadius: 20,
                      offset: Offset(0,10),
                    ),]
                ),
                child: TextField(
                  obscureText: isPasswordObscure,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isPasswordObscure=!isPasswordObscure;

                      });
                    }, icon:const Icon(Icons.remove_red_eye_rounded)),
                    prefixIcon: const Icon(Icons.lock_outline_rounded,
                      size: 30,),
                    hintText: "Confirm Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(

                  MaterialPageRoute(builder: (context) =>  const NavigationScreen()),
                );
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepOrange,
                ),
                child: const Center(child: Text('Signup',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),),),
              ),
            ),
            const SizedBox(
              height: 20,
            ),


            const Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage('assets/vegitable.png')),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
