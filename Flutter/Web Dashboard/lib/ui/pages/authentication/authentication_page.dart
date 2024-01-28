import 'package:dashboard/core/constants/app_colors.dart';
import 'package:dashboard/core/constants/images.dart';
import 'package:dashboard/core/routing/routes.dart';
import 'package:dashboard/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset(Images.logo),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  CustomText(
                    text: 'Welcome back to the admin panel.',
                    color: AppColors.lightGrey,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'abc@domain.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '123',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const CustomText(text: 'Remeber Me'),
                    ],
                  ),
                  const CustomText(
                    text: 'Forgot password?',
                    color: AppColors.active,
                  )
                ],
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.offAllNamed(rootRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.active,
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const CustomText(
                    text: 'Login',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: 'Do not have admin credentials? '),
                    TextSpan(
                      text: 'Request Credentials! ',
                      style: TextStyle(color: AppColors.active),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SignInButton(
                Buttons.Google,
                text: "Sign up with Google",
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              SignInButton(
                Buttons.Facebook,
                text: "Sign up with Facebook",
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              SignInButton(
                Buttons.LinkedIn,
                text: "Sign up with LinkedIn",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
