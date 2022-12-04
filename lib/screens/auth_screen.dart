import 'package:arascic_exam_app/widgets/custom_button.dart';
import 'package:arascic_exam_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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

                  CustomTextField(
                    controller: _passwordController,
                    hintText: 'Password',
                  )
                ]
              )
            ),

            const SizedBox(height: 20),

            CustomButton(
              text: 'Log In',
              onTap: () {

              }
            )
          ],
        )
      )
    );
  }
}