import 'package:crud_app/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors
          .transparent, // Keep Material transparent for gradient visibility
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppPallete.gradient1, AppPallete.gradient2],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: InkWell(
          onTap: () {
            // Action when the button is clicked
            print('Button clicked!');
          },
          borderRadius: BorderRadius.circular(8), // Match the border radius
          child: Container(
            width: 395,
            height: 55,
            alignment: Alignment.center,
            child: const Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
