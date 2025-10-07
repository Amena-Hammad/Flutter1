import 'package:flutter/material.dart';
import 'package:untitled/screenn/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController  = TextEditingController();
  TextEditingController passswordController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Text(
                "Welcome",
              style: TextStyle(color: Colors.greenAccent,fontSize: 30),
              ),
              SizedBox(height: 50),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  label: Text("email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  icon: Icon(Icons.email)
                ),
              ),
              SizedBox(height: 50),
              TextField(
                controller: passswordController,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  icon: Icon(Icons.password)
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(onPressed:(){
               /// print("email is : ${emailController.text}");
               /// print("password is : ${passswordController.text}");
              } , child: Text("Loading")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                  }, child: Text("SignUp")),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
