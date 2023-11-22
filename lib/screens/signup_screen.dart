import 'package:auth_screens/screens/login_screen.dart';
import 'package:auth_screens/utils/my_button.dart';
import 'package:auth_screens/utils/my_text_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPass = false;
  bool showConfirmPass = false;

  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  showConfirmPassword() {
    setState(() {
      showConfirmPass = !showConfirmPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 18, 18),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/radio_wave_beta.png',
                color: const Color.fromARGB(255, 10, 185, 121),
                width: 300,
              ),
              const SizedBox(
                height: 40,
              ),
              const MyTextField(hintText: 'Name'),
              const SizedBox(
                height: 12,
              ),
              const MyTextField(hintText: 'Email'),
              const SizedBox(
                height: 12,
              ),
              MyTextField(
                hintText: 'Password',
                onPressed: showPassword,
                obsecureText: showPass ? false : true,
                icon: showPass ? Icons.visibility_off : Icons.visibility,
              ),
              const SizedBox(
                height: 12,
              ),
              MyTextField(
                hintText: 'Confirm Password',
                onPressed: showConfirmPassword,
                obsecureText: showConfirmPass ? false : true,
                icon: showConfirmPass ? Icons.visibility_off : Icons.visibility,
              ),
              const SizedBox(
                height: 12,
              ),
              MyButton(
                customColor: const Color.fromARGB(255, 10, 185, 121),
                text: 'Sign Up',
                onTap: () {},
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Or Sign Up with',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Image.asset(
                      'assets/facebook.png',
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Image.asset(
                      'assets/google.png',
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Icon(
                      Icons.apple,
                      size: 50,
                      color: Colors.white.withOpacity(.7),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                        color: Color.fromARGB(255, 10, 185, 121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
