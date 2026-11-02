import 'package:flutter/material.dart';
import 'package:lab06/widgets/sign_in_screen.dart';
import './reset_password_screen.dart';
import './signup_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network(
                "https://docs.flutter.dev/assets/images/flutter-logo-sharing.png",
                width: 200,
              ),

            ),

            // TODO: Add some widgets here

            const Text('Sing up'),

            const TextField(
              decoration: InputDecoration(
                  labelText: 'Login'
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Mail'
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password'
              ),
            ),

            const SizedBox(height: 24.0),


            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: TextButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ),
                        )
                      },
                      child: const Text("Back"),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Message'),
                              content: Text("Need to implement"),
                            );
                          },
                        )
                      },
                      child: const Text("Sign Up"),
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }

}
