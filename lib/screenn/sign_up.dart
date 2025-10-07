import 'package:flutter/material.dart';
import 'package:untitled/screenn/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController  = TextEditingController();
  TextEditingController nameController  = TextEditingController();
  TextEditingController passswordController  = TextEditingController();
  TextEditingController confirmController  = TextEditingController();

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
                controller: nameController,
                decoration: InputDecoration(
                    label: Text("name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    icon: Icon(Icons.person)
                ),
              ),
              SizedBox(height: 50),
              TextField(
                controller: emailController,
                obscureText: true,
                decoration: InputDecoration(
                    label: Text("email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    icon: Icon(Icons.email)
                ),
              ),SizedBox(height: 50),
              TextField(
                controller: passswordController,
                decoration: InputDecoration(
                    label: Text("password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    icon: Icon(Icons.password)
                ),
              ),
              SizedBox(height: 50),
              TextField(
                controller: confirmController,
                obscureText: true,
                decoration: InputDecoration(
                    label: Text("Confirm Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    icon: Icon(Icons.confirmation_num)
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(onPressed:(){
                print("email is : ${emailController.text}");
                print("password is : ${passswordController.text}");
              } , child: Text("Loading")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));

                  }, child: Text("Login")),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}