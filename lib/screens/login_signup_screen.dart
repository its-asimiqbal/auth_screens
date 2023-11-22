import 'package:auth_screens/utils/my_button.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 18, 18),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 50,
                    ),
                    child: Image.asset(
                      'assets/radio_wave_beta.png',
                      color: const Color.fromARGB(255, 10, 185, 121),
                    ),
                  ),
                  MyButton(
                    onTap: () {},
                    customColor: Colors.white.withOpacity(.7),
                    text: 'Sign In',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    onTap: () {},
                    customColor: const Color.fromARGB(255, 10, 185, 121),
                    text: 'Create an account',
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Terms of use',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Privacy policy',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
