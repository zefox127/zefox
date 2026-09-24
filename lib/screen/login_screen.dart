import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
           child: Column(
            children:[
              Center(
               child: Container(
                 width: 100,
                 height: 100,
                 decoration: BoxDecoration(
                   borderRadius:BorderRadius.circular(24) ,
                   color: Colors.blue
                 ),
                 child: Icon(Icons.inventory_2, size: 50,color: Colors.white,),
           ),
          ),
              Text('CAMPUSMEET',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
        ),
              SizedBox(
                height: 5,
              ),
              Text('นัดพบอาจารย์ ICE'),
            ],
          ),
        ),
    ),
      ),
      );

  }
}
