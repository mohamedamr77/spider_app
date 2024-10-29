import 'package:flutter/material.dart';
import 'package:spiderapp/features/login/presentation/views/widgets/custom_text_form_field.dart';

import '../../../../../core/utiles/app_images.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Image.asset(
                AppImages.logo,
                height: 600,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),

        // App Title
        const SliverToBoxAdapter(
          child: Text(
            "spiders",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ),

        // Subtitle
        const SliverToBoxAdapter(
          child: Text(
            "SECURITY APP",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              letterSpacing: 2,
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 30)),

        const SliverToBoxAdapter(
          child: CustomTextFormField(
            hintText: 'Email or Phone',
            prefix: Icon(Icons.person, color: Colors.grey),
          ),
        ),
        // Email/Phone TextField

        const SliverToBoxAdapter(child: SizedBox(height: 20)),

        // Password TextField
        const SliverToBoxAdapter(
          child: CustomTextFormField(
            hintText: 'Password',
            obscureText: true,
            prefix: Icon(Icons.lock, color: Colors.grey),
          ),
        ),

        const SliverToBoxAdapter(child: SizedBox(height: 10)),

        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Login Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 10),

                // Or ext
                const Text(
                  "or",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                const SizedBox(height: 10),

                // Create Account Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                  child: const Text(
                    "Create an account",
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
