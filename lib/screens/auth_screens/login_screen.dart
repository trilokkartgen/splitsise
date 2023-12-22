import 'package:flutter/material.dart';
import 'package:splitwise/screens/bottombar/home_screens/Home_screen.dart';
import 'package:splitwise/widgets/TestField.dart';
import 'package:splitwise/widgets/resuableButton.dart';

import '../bottombar/bottomBar.dart';

class LoginUser extends StatelessWidget {
  LoginUser({super.key});

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: size.width / 0.5,
                child:
                IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: () {}),
              ),
              SizedBox(
                height: size.height / 50,
              ),
              SizedBox(
                width: size.width / 1.1,
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 1.1,
                child: Text(
                  "Sign In to Contiue!",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: ResuableTextField(
                      hintText: 'Phone Number',
                      icon: Icons.phone,
                      controller: email,
                    )),
              ),
              Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: ResuableTextField(
                    hintText: 'password',
                    icon: Icons.password,
                    controller: email,
                  )),
              SizedBox(
                height: size.height / 10,
              ),
              ResuableButton(text: "login user",function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBarScreen(),));
              }),
              SizedBox(
                height: size.height / 40,
              ),
              GestureDetector(
                // onTap: () =>
                //     Navigator.of(context).push(MaterialPageRoute(builder: (_) => CreateAccount())
                //     ),
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
