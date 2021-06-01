import 'package:flutter/material.dart';
import 'package:interviewtask/screens/signup_screen/go_to_login.dart';
import 'package:interviewtask/screens/widgets/customize_button.dart';
import 'package:interviewtask/screens/widgets/customize_text_form_field.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/SignupScreen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _signup() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Column(
          children: [
            const SizedBox(height: 200),
            const Text(
              'Register',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            const SizedBox(height: 10),
            CustomizeTextFormField(hint: 'Name', controller: _name),
            CustomizeTextFormField(hint: 'Email', controller: _email),
            CustomizeTextFormField(hint: 'Password', controller: _password),
            const SizedBox(height: 10),
            CustomizeButton(
              title: 'Register',
              onClick: _signup,
            ),
            const SizedBox(height: 10),
            GoToLogin(),
          ],
        ),
      ),
    );
  }
}
