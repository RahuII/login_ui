import 'package:flutter/material.dart';
import 'package:login_ui_page/elevated_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('MyApp'),
        centerTitle: true,
        elevation: 4.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 50.0),
            CustomElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/google_logo.png'),
                  const Text(
                    'Sign in with Google',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Opacity(
                      opacity: 0.0,
                      child: Image.asset('images/google_logo.png')),
                ],
              ),
              primaryColorHexCode: 0xffF9F9F9,
              onPressed: _nothingHaveTodo,
            ),
            const SizedBox(height: 8.0),
            CustomElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/facebook-logo.png'),
                  const Text(
                    'Sign in with Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Opacity(
                      opacity: 0.0,
                      child: Image.asset('images/google_logo.png')),
                ],
              ),
              primaryColorHexCode: 0xff005A8D,
              onPressed: _nothingHaveTodo,
            ),
            const SizedBox(height: 8.0),
            const CustomElevatedButton(
              child: Text(
                'Sign in with Email',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              primaryColorHexCode: 0xff17706E,
              onPressed: _nothingHaveTodo,
            ),
            const SizedBox(height: 8.0),
            const Text(
              'or',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 8.0),
            const CustomElevatedButton(
              primaryColorHexCode: 0xffF3C623,
              child: Text(
                'Go anonymous',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              onPressed: _nothingHaveTodo,
            ),
          ],
        ),
      ),
    );
  }
}

void _nothingHaveTodo() {
  // Todo somthing
}
