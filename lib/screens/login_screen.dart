import 'package:auth_screens/utils/my_button.dart';
import 'package:auth_screens/utils/my_text_field.dart';
import 'package:flutter/material.dart';

import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPass = false;
  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  bool checkTheBox = false;
  check() {
    setState(() {
      checkTheBox = !checkTheBox;
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
              const MyTextField(
                hintText: 'Enter Email',
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                hintText: 'Enter Password',
                onPressed: showPassword,
                obsecureText: showPass ? false : true,
                icon: showPass ? Icons.visibility_off : Icons.visibility,
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.grey[500],
                          ),
                          child: Checkbox(
                            checkColor: Colors.white,
                            value: checkTheBox ? true : false,
                            onChanged: (value) {
                              check();
                            },
                          ),
                        ),
                        const Text(
                          'Remember Me',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const Text(
                      'Forget Password',
                      style: TextStyle(
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                customColor: const Color.fromARGB(255, 10, 185, 121),
                text: 'Sign In',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Or Sign In with',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
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
                    'Don\'t have an account?',
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
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                    },
                    child: const Text(
                      'REGISTER',
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
