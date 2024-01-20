import 'package:flutter/material.dart';
import 'package:dtrecipe/sign_up.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
bool isPasswordObscure=true;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return     Scaffold(
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
              padding: const EdgeInsets.only(left: 0,top: 0,right: 30,bottom: 0,),
              child:  Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {  },
                    child: const Text('Forgot Password?',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                  )
                ],
              ),
            ),
          const SizedBox(
           height: 20,
          ),
           MaterialButton(
             onPressed: () {
               Navigator.of(context).push(

                 MaterialPageRoute(builder: (context) =>  const SignUp()),
               );
                },
                  child: Container(
                     height: 50,
                     width: 150,
                     decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.deepOrange,
                     ),
                 child: const Center(child: Text('Login',style: TextStyle(
               fontWeight: FontWeight.bold,
                 fontSize: 25,
               color: Colors.white,
                ),),),
                       ),
           ),
            const SizedBox(
              height: 20,
            ),
            const Text('or',style: TextStyle(
              fontSize: 23,
            ),),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 65,width: 65,
                    child: MaterialButton(onPressed: () {  },
                    child: const Image(image: AssetImage('assets/Group 7.png')))),
                SizedBox(height: 70,width: 70,
                    child: MaterialButton(onPressed: (){},
                        child: const Image(image: AssetImage('assets/Group 6.png',)))),

              ],
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
