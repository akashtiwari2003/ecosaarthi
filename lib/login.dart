import 'package:finlogin/garbageCollection.dart';
import 'package:finlogin/signup.dart';
import 'package:flutter/material.dart';
import 'custom_textfield.dart';
import 'dashboard.dart';
import 'firebase_auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class EmailPasswordLogin extends StatefulWidget {
  static String routeName = '/login-email-password';
  const EmailPasswordLogin({Key? key}) : super(key: key);

  @override
  _EmailPasswordLoginState createState() => _EmailPasswordLoginState();
}

class _EmailPasswordLoginState extends State<EmailPasswordLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // void loginUser(){
  //   FirebaseAuthMethods(FirebaseAuth.instance).loginWithEmail(
  //       email: emailController.text, password: passwordController.text, context: context
  //   );
  // }

  void loginUser(){
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text)
        .then((value) {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        title: 'Login Succes',
        text: 'Click Ok',
        confirmBtnText: 'Ok',
        onConfirmBtnTap: ()=>{
          Navigator.of(context).pop(),
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const Dashboard())
          )
        },
        confirmBtnColor: Colors.green,
      );
    }).onError((error, stackTrace){
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Oops...',
        text: 'Wrong Credential',
      );
    });
  }

  void signUpUser() async{
    FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmail(email: emailController.text, password: passwordController.text, context: context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/login.png", fit: BoxFit.cover),
          const Text("Sign In",
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
        hintText: "Enter Username",
        labelText: "Username",
        ),
          controller: emailController,
        ),
        TextFormField(
        obscureText: true,
        decoration: InputDecoration(
        hintText: "Enter Password",
        labelText: "Password",
        ),
          controller: passwordController,
        ),
        SizedBox(
        height: 30.0,
        ),
          InkWell(
            child: Text('Do not have an account? Sign Up',style: TextStyle(
              color: Colors.blue,
            ),
            ),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const ClientLogin())
              );
            }
          ),

          SizedBox(
            height: 30.0,
          ),
              ElevatedButton(
                onPressed: loginUser,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(color: Colors.white),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width / 2.5, 50),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),

        ],
          ),
        ),
        ],
        ),
      ),
    );
  }
}