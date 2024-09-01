import 'package:crud_app/core/theme/app_palette.dart';
import 'package:crud_app/features/auth/presentation/pages/widgets/auth_field.dart';
import 'package:crud_app/features/auth/presentation/pages/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              AuthField(hintText: 'Name'),
              SizedBox(height: 15),
              AuthField(hintText: 'Email'),
              SizedBox(height: 15),
              AuthField(hintText: 'Password'),
              SizedBox(height: 15),
              AuthGradientButton(),
              SizedBox(height: 15),
              GestureDetector(
                child: RichText(
                  text: TextSpan(
                      text: 'Dont\'t have an account? ',
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: 'Sign In',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppPallete.gradient2,
                                    fontWeight: FontWeight.bold,
                                  ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
