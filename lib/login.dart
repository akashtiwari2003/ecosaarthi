import 'package:finlogin/garbageCollection.dart';
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
              MaterialPageRoute(builder: (context)=>const GarbageCollection())
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
              controller: emailController,
              hintText: 'Enter your email',
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
              controller: passwordController,
              hintText: 'Enter your password',
            ),
          ),
          const SizedBox(height: 40),
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
    );
  }
}