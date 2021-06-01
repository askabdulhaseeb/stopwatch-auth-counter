import 'package:flutter/material.dart';
import 'package:interviewtask/screens/home_screen/home_screen.dart';
import 'package:interviewtask/screens/login_screen/go_to_signup.dart';
import 'package:interviewtask/screens/widgets/customize_button.dart';
import 'package:interviewtask/screens/widgets/customize_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _loginPage() {
    Navigator.of(context).pushNamedAndRemoveUntil(
      HomeScreen.routeName,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              const SizedBox(height: 10),
              CustomizeTextFormField(controller: _email, hint: 'Email'),
              CustomizeTextFormField(
                controller: _password,
                hint: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 10),
              CustomizeButton(
                title: 'Login',
                onClick: _loginPage,
              ),
              const SizedBox(height: 10),
              GoToSignup(),
            ],
          ),
        ),
      ),
    );
  }
}
