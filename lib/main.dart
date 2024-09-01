import 'package:crud_app/core/theme/theme.dart';
import 'package:crud_app/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CRUDapp',
      theme: AppTheme.darkMode,
      home: const SignupPage(),
    );
  }
}
