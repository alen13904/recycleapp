import 'package:flutter/material.dart';
import 'package:recycleapp/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key,required this.email});


  @override
  Widget build(BuildContext context) {

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
                SizedBox(height: 70),
               Container( 
                width: w,
                margin: const EdgeInsets.only(left: 20),
                child: 
                Column(
                  children: [ 
                    Text(
                      "Thanks for visiting",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color:Colors.black54
                      ),
                      ),
                      Text(
                      email,
                      style: TextStyle(
                        fontSize: 18,
                        color:Colors.grey[500]
                      ),
                      ),
                      ],
                ),),
                  SizedBox(height: 70),    
                GestureDetector(
                onTap:(){
                  AuthController.instance.logout();
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
                      "Sign Out",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color:Colors.white
                     ),
                     ),
                     )
                    )
                 ),
              ]
             )
             );
  }

  }
  
