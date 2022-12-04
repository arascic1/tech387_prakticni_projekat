import 'package:arascic_exam_app/data/credentials.dart';
import 'package:arascic_exam_app/screens/home_screen.dart';
import 'package:arascic_exam_app/widgets/custom_button.dart';
import 'package:arascic_exam_app/widgets/custom_password_field.dart';
import 'package:arascic_exam_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static const String routeName = '/auth';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  bool _invalid = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 150,
          left: 50,
          right: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('res/Vector.png'),

            const SizedBox(height: 30),

            Form(
              child: Column(
                children: [
                  CustomTextField(
                    controller: _emailController,
                    hintText: 'E-mail'
                  ), 

                  const SizedBox(height: 10),

                  CustomPasswordField(
                    controller: _passwordController,
                    hintText: 'Password',
                  )
                ]
              )
            ),

            if(_invalid)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Pogrešan email ili password',
                  style: TextStyle(color: Colors.red) 
                ),
              )
            else
              const SizedBox(height: 20), 

            CustomButton(
              text: 'Log In',
              onTap: () {
                signIn();
              }
            )
          ],
        )
      )
    );
  }

  void signIn() {
    if(
      _emailController.text != Credentials.email 
      || _passwordController.text != Credentials.password
    ) {
      setState(() {
        _invalid = true;
      });
    } else {
      setState(() {
        _invalid = false;
      });

      Navigator.pushNamedAndRemoveUntil(
        context, 
        HomeScreen.routeName, 
        (route) => false
      );
    }
  }
}