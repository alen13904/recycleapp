import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recycleapp/auth_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    
    List images =[
      "3.png",
      "4.png",
      "8.png",
    ];

     double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(

  backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.12,),
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(1, 255, 255, 255),
                  radius: 60,
                  backgroundImage: AssetImage(
                    "img/7.png"
                  ),)
              ],
            )
          ),
          Container(
            child: Column(
              children: [ 
                SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only (left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email, color:Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.none,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only (left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                       hintText: "Password",
                      prefixIcon: Icon(Icons.password_outlined, color:Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.none,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: (){
                   AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                  },
                 child: Container(
                  width: w * 0.5,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage("img/2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color:Colors.white
                     ),
                     ),
                     )
                     ),
                     ),
                     SizedBox(height: 10,),
                     RichText(
                      text:TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                        text:"Already have an account?",
                        style: TextStyle(
                          fontSize: 20,
                          color:Colors.grey[500]
                        ) 
                        ),
                        ),
                     SizedBox(height: 50),
                     SizedBox(height:w*0.1),
                     RichText(text: TextSpan(
                      text: "Sign up using one of the following methods",
                      style: TextStyle(
                        color:Colors.grey[500],
                        fontSize: 15
                      ),
                     ),),
                     Wrap(
                      children: List<Widget>.generate(
                        3,
                        (index){
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[500],
                            child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              "img/"+images[index]),
                              ),
                              ),
                              );
                        }
                      )
                      ,)
              ]
             )
             )
             ]
             )
             );
  }

  }

                            
              
                            