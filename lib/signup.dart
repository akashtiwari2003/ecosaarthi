import 'package:finlogin/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_auth_methods.dart';

class ClientLogin extends StatefulWidget {
  const ClientLogin({super.key});

  @override
  State<ClientLogin> createState() => _ClientLoginState();
}

class _ClientLoginState extends State<ClientLogin> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void signUpUser() async{
    FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmail(email: emailController.text, password: passwordController.text, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            // const SizedBox(
            //   height: 2,
            //   width: 5,
            // ),
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            // SizedBox(
            //   height: 15.0,
            // ),
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter E-mail",
                      labelText: "E-mail",
                    ),
                    controller: emailController,
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: " Password",
                    ),
                    controller: passwordController,
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Confirm Password",
                      labelText: "Confirm Password",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // TextButton(
                  //   child: Text(loginPage
                  //       ? 'Create an account'
                  //       : 'Have an account? Sign in'),
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) =>ClientLogin ()),
                  //     );
                  //   },
                  // ),
                  const SizedBox(height: 20),
                  InkWell(
                      child: Text('Already have an account? Sign In',style: TextStyle(
                        color: Colors.blue,
                      ),
                      ),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>const EmailPasswordLogin())
                        );
                      }
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        signUpUser();
                      },
                      child: Text('SignUp'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 70, 221, 0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}