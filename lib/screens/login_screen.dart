import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_tasks/screens/forgot_password_screen.dart';
import 'package:internship_tasks/screens/register_screen.dart';
import 'package:internship_tasks/utils/colors.dart';
import '../widgets/back_button.dart';
import '../widgets/buttons.dart';
import '../widgets/icon_button.dart';
import '../widgets/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      MyBackButton(),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    'Welcome back! Glad\nto see you, Again!',
                    style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  MyTextFormField(
                    hintText: 'Enter your email',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  PassTextField(),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.urbanist(
                            textStyle: const TextStyle(
                              color: myDarkGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MyButton(
                    onTap: () {},
                    title: 'Login',
                    bgColor: myBlackColor,
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Divider(
                          color: myBorderColor,
                          thickness: 1,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Or Login with',
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: myDarkGreyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Expanded(
                        child: Divider(
                          color: myBorderColor,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyIconButton(
                        image: 'images/fb.png',
                        hight: 24,
                        width: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      MyIconButton(
                        image: 'images/google.png',
                        hight: 26,
                        width: 26,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      MyIconButton(
                        image: 'images/apple.png',
                        hight: 26,
                        width: 21,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          color: myBlackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Register Now',
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
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
